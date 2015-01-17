#!/bin/bash

EXEC="../meld -d"
TEST=${1}
TYPE="${2}"
RUNS="${3}"

if test -z "${TEST}" -o -z "${TYPE}"; then
	echo "Usage: test.sh <code file> <test type: th, thp, ...>"
	exit 1
fi

dynamic_test () {
   [[ ! -z `grep "^$1$" "dynamic.include"` ]]
}

to_exclude () {
   [[ ! -z `grep "^$1$" "blacklist.exclude"` ]]
}

FILE="files/$(basename $TEST .m).test"
ARGS="args/$(basename $TEST .m)"
NODES=$(python ./number_nodes.py $TEST)

if [ -f $ARGS ]; then
   . $ARGS
fi

if dynamic_test $(basename $TEST .m); then
   # We can actually use more than 1 thread.
   NODES=64
fi
if to_exclude $(basename $TEST .m); then
   exit 0
fi

do_exit ()
{
	echo $*
	exit 1
}

run_diff ()
{
	TO_RUN="${1} ${MELD_ARGS} -- ${PROG_ARGS}"
	${TO_RUN} > test.out
	RET=$?
	if [ $RET -eq 1 ]; then
		echo "Linear Meld has failed! See report"
		exit 1
	fi
   if [ $RET -eq 139 ]; then
      echo "Linear Meld crashed. Please report to <flaviocruz@gmail.com>"
      exit 1
   fi
   failed_tests=""
   done=0
   for file in "${FILE}" "${FILE}2"; do
      if [ ! -f $file ]; then
         continue
      fi
      DIFF=`diff -u ${file} test.out`
      if [ ! -z "${DIFF}" ]; then
         failed_tests="$failed_tests $file"
      else
         done=1
         break
      fi
   done
   if [ $done -eq 0 ]; then 
      for tst in $failed_tests; do
         echo $tst
         diff -u ${tst} test.out
         echo "!!!!!! DIFFERENCES IN FILE ${TEST} ($TO_RUN)"
      done
   fi
	rm test.out
   return 0
}

do_serial ()
{
	SCHED=${1}
	TO_RUN="${EXEC} -f ${TEST} -c ${SCHED}"
	
	run_diff "${TO_RUN}"
}

do_test ()
{
	NTHREADS=${1}
	SCHED=${2}
	TO_RUN="${EXEC} -f ${TEST} -c ${SCHED}${NTHREADS}"

	run_diff "${TO_RUN}"
}

run_serial_n ()
{
	SCHED=${1}
	TIMES=${2}

	echo -n "Running ${TEST} ${TIMES} times (SCHED: ${SCHED})..."
	for((I=1; I <= ${TIMES}; I++)); do
		if ! do_serial ${SCHED}; then
         return 1
      fi
	done
   echo " OK!"
   return 0
}

run_test_n ()
{
	NTHREADS=${1}
	TIMES=${2}
	SCHED=${3}
	echo -n "Running ${TEST} ${TIMES} times with ${NTHREADS} threads (SCHED: ${SCHED})..."
	for((I=1; I <= ${TIMES}; I++)); do
		do_test ${NTHREADS} ${SCHED}
	done
   echo " OK!"
   return 0
}

[ -f "${TEST}" ] || do_exit "Test code ${TEST} not found"
[ -f "${FILE}" ] || do_exit "Test file ${FILE} not found"

loop_sched ()
{
	SCHED=${1}
   RUNS=${2}
   # run_test_n 1 ${RUNS} ${SCHED}
   for th in `seq 2 16`; do
      if [ $NODES -ge $th ]; then
         run_test_n $th ${RUNS} ${SCHED}
      fi
   done
}

if [ "${TYPE}" = "thread" ]; then
	loop_sched th ${RUNS}
	exit 0
fi

if [ "${TYPE}" = "serial" ]; then
   run_serial_n th1 ${RUNS}
	exit 0
fi
