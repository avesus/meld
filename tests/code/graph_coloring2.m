meld fil    
   	                                                            	                init -o axiomsY   start() -o color(randint(3) + 1), update(), {B | 
			!edge(B) | neighbor-color(B, 0, 0)}.V   new-neighbor-color(B, New), neighbor-color(B, Old, MV38) -o neighbor-color(B, New, 1).�   select-best-color() -o [ COLLECT => L,  | B | neighbor-pick-color(B, L) | 
			invalid-colors(intlistsort(intlistremoveduplicates(L)), 1)].?   invalid-colors(MV40, C), test-nil(MV40) -o update-neighbors(C).x   invalid-colors(MV41, C), MV43 = head(MV41), Ls = tail(MV41), not(test-nil(MV41)), 
			MV43 = 0 -o invalid-colors(Ls, C).o   invalid-colors(MV44, C), Ls = tail(MV44), not(test-nil(MV44)), C = head(MV44) -o 
			invalid-colors(Ls, C + 1).a   invalid-colors(MV46, C), Cx = head(MV46), Cx > C, not(test-nil(MV46)) -o 
			update-neighbors(C).x  update-neighbors(C), color(MV39) -o color(C), {B | 
			!edge(B) | new-neighbor-color(host-id, C)@B}, {B, NC, Flag | to-select-color(B, NC, Flag), 
			NC != C, Flag = 1 | neighbor-color(B, NC, 0)}, {B, Flag | 
			to-select-color(B, C, Flag), Flag = 1 | neighbor-color(B, 0, 0), update()@B}, 
			{B, NC, Flag | to-select-color(B, NC, Flag), Flag = 0 | neighbor-color(B, NC, 0)}.   !update(), update() -o 1.�   update() -o select-best-color(), {B, NC, Flag | !edge(B), 
			neighbor-color(B, NC, Flag) | neighbor-pick-color(B, NC), to-select-color(B, NC, Flag)}.          0       0       �              _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setColor2                                                            edge                                                                neighbor-color                                                      new-neighbor-color                                                  color                                                                update                                                               start                                                                select-best-color                                                   neighbor-pick-color                                                  invalid-colors                                                      to-select-color                                                     new-color                                                           update-neighbors                                                         �                      (      �  "   �
�   	         .   G   `   y   �   �   �            �                �               �                x               _               F            2                              @   0 � 0         �      l      � f    �0 @    �"    @4   �  .    �0!@	0  0   0    �� �     G      �
 A    �0 �	 3    B  0!@	0   0 0   �� �     	
V      � P    �0 p!<   �     �0" !!��@ "! !#0$ 0   � �     0      � *    �0 !  `   @0  � �     S      � M    �0 !  !"`7    !  �!"    `"    !  @0! 0 � �     W      � Q    �0 !  !"`;    !  �!" `(    !  @0! �    � �     F      � @    �0 !  !"`*    !  �!"	 `   @0  � �     )     � #   �0 �    �0!@0   ,   �  &    �0"@
0 0  0$ �G   � A   A   0"�#  `&   @	0  00    ��I   � C     A   0"@	0  0   0    @0$ ��8   � 2   A    0"@	0  00    ���� �     &   	   �       �0 �     �0!��     t   
   � n    �0 @V   �  P    �0!�	 B    B 0"@0  0@0  00��� �     