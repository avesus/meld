meld fil       	                                                                                                                                    	                init -o axiomsY   start() -o color(randint(3) + 1), update(), {B | 
			!edge(B) | neighbor-color(B, 0, 0)}.c   new-neighbor-color(B, New), neighbor-color(MV84, Old, MV82), MV84 = B -o neighbor-color(B, New, 1).�   select-best-color() -o [ COLLECT => L,  | B | neighbor-pick-color(B, L) | 
			invalid-colors(intlistsort(intlistremoveduplicates(L)), 1)].c  invalid-colors(MV93, MV94) -o (test-nil(MV93) -o update-neighbors(MV94)), OR (MV88 = head(MV93), Ls = tail(MV93), not(test-nil(MV93)), MV88 = 0 -o 
			invalid-colors(Ls, MV94)), OR (Ls = tail(MV93), not(test-nil(MV93)), MV94 = head(MV93) -o invalid-colors(Ls, MV94 + 1)), 
			OR (Cx = head(MV93), Cx > MV94, not(test-nil(MV93)) -o update-neighbors(MV94)).x  update-neighbors(C), color(MV83) -o color(C), {B | 
			!edge(B) | new-neighbor-color(host-id, C)@B}, {B, NC, Flag | to-select-color(B, NC, Flag), 
			NC != C, Flag = 1 | neighbor-color(B, NC, 0)}, {B, Flag | 
			to-select-color(B, C, Flag), Flag = 1 | neighbor-color(B, 0, 0), update()@B}, 
			{B, NC, Flag | to-select-color(B, NC, Flag), Flag = 0 | neighbor-color(B, NC, 0)}.   !update(), update() -o 1.�   update() -o select-best-color(), {B, NC, Flag | !edge(B), 
			neighbor-color(B, NC, Flag) | neighbor-pick-color(B, NC), to-select-color(B, NC, Flag)}.           �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setColor2                                                            edge                                                                neighbor-color                                                      new-neighbor-color                                                  color                                                                update                                                               start                                                                select-best-color                                                   neighbor-pick-color                                                  invalid-colors                                                      to-select-color                                                     new-color                                                           update-neighbors                                                         �                                                                                                      �                   �   � 
_  	     �   �   �   �   ^   B                                                     �                    �                            �                            �                             k                            F                             !                       @ w #         �    o  f  S  J  A  .  %    	     �   �   �   �   �   �   �   �   �   ~   u   l   Y   P        v                  p    @   i   =& w@w5              /    @	!          w�� �         L              
    F            	    0      !   !    {� �         	
^                  X    $=                  f ��@i"i!'    w� �         �                  �    "  `   @!  w� �"  `%   T      ;`   Z  '  { �"  `5   " T  ;`#   Z  '  "    =& { �"  `%   T  " C`   @!  w� �         >                 8              "   !   {/              )    @
( !  " �M              G      ""  <`   @	!  !    w��K               E        @	!          w@" ��;              5       @	!  !    w��� �         5                  /                   ��         �                  z    @w\              V            	    @     @!  !w@!  !!w��� �         