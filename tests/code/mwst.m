meld fil       #                                               init -o axioms�   start(), state(SN), !edge(B, W), edgetype(B, Type), 
			SN = 0 -o state(2), edgetype(B, 2), connect(host-id, 0)@B, findcount(0), 
			level(0).�   connect(J, L), !level(LN), edgetype(J, OldType), !edge(J, Weight), 
			!state(SN), !core(FN), L < LN -o edgetype(J, 2), inc-if-find(SN), 
			initiate(host-id, LN, FN, SN)@J.@   inc-if-find(State), findcount(N), State = 1 -o findcount(N + 1).$   inc-if-find(State), State != 1 -o 1.�   connect(J, L), !level(LN), !edgetype(J, NotBasic), !edge(J, Wj), 
			L >= LN, NotBasic != 0 -o initiate(host-id, LN + 1, Wj, 1)@J.j  initiate(J, L, F, S), level(LN), state(SN), core(FN), 
			inbranch(MV101), best-edge(MV102), best-wt(MV103) -o level(L), state(S), 
			core(F), inbranch(J), best-edge(host-id), best-wt(999999.9), do-test-if-find(S), 
			{B, W, Branch | !edge(B, W), edgetype(B, Branch), B != J, Branch = 2 | 
			edgetype(B, Branch), inc-if-find(S), initiate(host-id, L, F, S)@B}.,   do-test-if-find(Find), Find = 1 -o dotest().(   do-test-if-find(State), State != 1 -o 1.�   dotest(), !edge(B, W), !edgetype(B, Basic), test-edge(MV104), 
			!level(LN), !core(FN), Basic = 0 -o test-edge(B), test(host-id, LN, FN)@B.=   dotest(), test-edge(MV105) -o test-edge(host-id), doreport().�   test(J, L, F), !level(LN), !core(FN), !test-edge(TestEdge), 
			L <= LN, F = FN -o maysendreject(TestEdge, J), {Basic | edgetype(J, Basic), 
			Basic = 0 | edgetype(J, 1)}.5   maysendreject(TestEdge, J), TestEdge = J -o dotest().P   maysendreject(TestEdge, J), !edge(J, MV106), TestEdge != J -o reject(host-id)@J.4   maysendreject(TestEdge, J), TestEdge = host-id -o 1.a   test(J, L, F), !edge(J, MV107), !level(LN), !core(FN), 
			L <= LN, FN != F -o accept(host-id)@J.K   accept(J), test-edge(MV108) -o test-edge(host-id), may-change-best-edge(J).�   may-change-best-edge(J), best-wt(BW), !edge(J, ThisW), best-edge(MV109), 
			ThisW < BW -o best-edge(J), best-wt(ThisW), doreport().V   may-change-best-edge(J), !best-wt(BW), !edge(J, ThisW), ThisW >= BW -o 
			doreport().d   reject(J) -o dotest(), {W, Basic | !edge(J, W), 
			edgetype(J, Basic), Basic = 0 | edgetype(J, 1)}.�   doreport(), findcount(FC), test-edge(Nil), state(SN), 
			!inbranch(In), !edge(In, MV110), !best-wt(BW), FC = 0, Nil = host-id -o 
			findcount(0), test-edge(host-id), state(2), report(host-id, BW)@In.   doreport() -o 1.�   report(J, W), !inbranch(InBranch), findcount(FindCount), InBranch != J -o 
			findcount(FindCount - 1), may-set-best-edge(J, W).k   may-set-best-edge(J, W), best-wt(BW), best-edge(MV111), W < BW -o 
			best-wt(W), best-edge(J), doreport().=   may-set-best-edge(J, W), !best-wt(BW), W >= BW -o doreport().s   report(J, W), !inbranch(InBranch), !state(SN), !best-wt(BW), 
			InBranch = J, SN != 1, W > BW -o do-change-root().�   report(J, W), !inbranch(InBranch), !state(SN), !best-wt(BW), 
			InBranch = J, SN != 1, W <= BW, W = 999999.9, BW = 999999.9 -o 
			halt().t   report(J, W), !inbranch(InBranch), !state(SN), !best-wt(BW), 
			InBranch = J, SN != 1, W <= BW, W != 999999.9 -o 1.j   do-change-root(), !best-edge(B), !edge(B, MV112), !edgetype(B, Branch), 
			Branch = 2 -o change-root()@B.�   do-change-root(), !best-edge(B), !edge(B, MV113), edgetype(B, Branch), 
			!level(LN), Branch != 2 -o edgetype(B, 2), connect(host-id, LN)@B."   change-root() -o do-change-root().             R   0        0      0      0       0      0      0    ��.A   �                                              _init                                                                                              set-priority                                                                                        setcolor                                                            	                              setedgelabel                                                        	                               write-string                                                                                       add-priority                                                                                         schedule-next                                                                                       setColor2                                                                                           state                                                                                              edge                                                                                                 start                                                                                              edgetype                                                                                           connect                                                                                             findcount                                                                                           level                                                                                             initiate                                                                                            inc-if-find                                                                                        core                                                                                               inbranch                                                                                           best-wt                                                                                            best-edge                                                                                           do-test-if-find                                                                                      dotest                                                                                            report                                                                                            test                                                                                               test-edge                                                                                          accept                                                                                            maysendreject                                                                                      reject                                                                                             may-change-best-edge                                                                                 doreport                                                                                          may-set-best-edge                                                                                    do-change-root                                                                                       halt                                                                                                 change-root                                                              �                                           �     �
�        6   �   k   "  �   @ 0     0      @ 0     0      >  @ 0     0      @ 0      0      	  @ 0     0      @ 0     0      @ 0     0      �   @ 0     0      @ 0     0      �   @ 0     0      @ 0      0      R   @ 0     0      @ 0     0      @ 0     0         
        %   �   I   �   z      	      ���@	      ���@�      	       ���@	      ��� @�   ,   	      ���@	      ��� @	      `ff@~      	      `ff@	      @33�?Z      	       ���@	      ����?6   ,   	      ���@	      @33�?	      ����?   @ 0        @ 0    @ 0       @ 0    @ 0    @ 0             @
   0 � 0         �      �      �
 �    �0 � �    �0!�"     `�   �	�    �0"� t    B 0#@0    @0  0   @0 0    0% @0     @0     ��� �     	
�      � �    �0 �  �    �0!�"  `�   � �    B  0"�	  z    B  0#�  j    �0$�  \    �0%@0   0   @0  @0 0 0 0 0'  �� �     	L      � F    �0 �!     `-   � '    �0!@�     �� �     )      � #    �0 �!     `
   � �     �      � �    �0 �      �0!�"  `h   �  b    B  0"�#   `G   �	  A    B  0#@0 �    00   0%  � �     	`     � Z   �0 � L   �0!� >   �0"� 0   �0#� "   �0$�    �0%�    �0&@0  @0  @0  @0   @0 @0    @0  �   �	  �    �0'�(   `p   � j    B 0(�)   `	O   @	0  	0			@	0  			@	0 	0 	0 	0 	0* 	
��������� �     /      � )    �0 �!     `   @� �     )      � #    �0 �!     `
   � �     �   	   � �    �0 � �    �0!�  |    �0"�  n    �0#�	`    �0$�  R    B 0%�&   `7   @0  @0 0 0 0' �� �     	9   
   � 3    �0 � %    �0!@0 @�� �     �      � �    �0 �  �    �0!�"  `�   �  �    �0"�#  `l   �  f    �0#@0  0  @   � :    B  0$�%   `   @0   0   ��� �     -      � '    �0 �!   `   @� �     G      � A    �0 �!   `*   �	  $    B 0!@0 0# � �     	%      �     �0 �!  `
   � �     r      � l    �0 �	  ^    B  0!�  N    �0"�#  `7   �  1    �0#�$   `   @0 0%  � �     	@      � :    �0 � ,    �0!@0 @0   �� �     w      � q    �0 � c    �0!�	  U    B  0"�# `<   � 6    �0#@0   @0 @��� �     	K      � E    �0 �  7    �0!�	  )    B  0"�#
 `   @� �     	n      � h    �0 @P   �	  J    B  0!� :    B  0"�#   `   @0   0   ��� �     �      � �    �0 � �    �0!�"     `�   � �    �0"�# `�   � �    �0#�  v    �0$�	  h    B 0%�  X    �0&@0     @0 @0    @0 0 0( ���� �     	      �     �0 � �     l      � f    �0 �  X    �0!�"   `A   � ;    �0"@�     @0   0 �� �     g      � a    �0 � S    �0!�"  `<   � 6    �0"@0  @0   @��� �     ;      � 5    �0 �  '    �0!�"
  `   @� �     w      � q    �0 �  c    �0!�"   `L   �  F    �0"�#    `-   �  '    �0#�$  `   @ � �     �      � �    �0 �!    `z   �  t    �0!�"   `]   �  W    �0"�#    `>   �  8    �0#�$  `!   �$    `   @!� �     �      � |    �0 �!     `c   �  ]    �0!�"   `F   �  @    �0"�#    `'   �  !    �0#�$  `
   � �     b      �  \    �0 �  N    �0!�	  @    B 0"�  0    B 0#�$   `   @"0% � �     	 �      �  �    �0 �  �    �0!�	  r    B 0"� b    B 0#�$   `G   �  A    �0$@0  0   @0 0 0& �� �      	      �"     �0 @ � �     "