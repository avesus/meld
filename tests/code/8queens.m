meld fil       @                   
       
                                                                                                         	       	                                                                                                                                                                                                                                                                                                                           "       "       #       #       $       $                       %       %       !       !       &       &       '       '       *       *       +       +       ,       ,       (       (       -       -       )       )       .       .       /       /       2       2       3       3       4       4       0       0       5       5       1       1       6       6       7       7       :       :       ;       ;       <       <       8       8       =       =       9       9       >       >       ?       ?        	                _init -o node-axioms.�   propagate-left(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {L | !left(L), 
			L != host-id | propagate-left(Nodes, Coords)@L}.�   propagate-right(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {R | !right(R), 
			R != host-id | propagate-right(Nodes, Coords)@R}.T   test-and-send-down(Nodes, Coords), !coord(X, Y) -o test-y(Y, Coords, Nodes, Coords).v   test-y(Y, MV3, Nodes, Coords), !coord(OX, OY), test-nil(MV3) -o test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).�   test-y(MV24, MV25, MV26, MV27), MV29 := head(MV28), MV28 := tail(MV25), not(test-nil(MV25)), 
			not(test-nil(MV28)) -o (MV24 = MV29 -o 1), OR (RestCoords := tail(MV28), MV24 != MV29 -o test-y(MV24, RestCoords, MV26, MV27)).�   test-diag-left(X, Y, MV1, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).9  test-diag-left(MV30, MV31, MV32, MV33, MV34), MV37 := head(MV36), MV36 := tail(MV32), MV35 := head(MV32), 
			not(test-nil(MV32)), not(test-nil(MV36)) -o (MV30 = MV35, MV31 = MV37 -o 1), OR (RestCoords := tail(MV36), (MV30 != MV35) || (MV31 != MV37) -o test-diag-left(MV30 - 1, MV31 - 1, RestCoords, MV33, MV34)).�   test-diag-right(X, Y, MV16, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 8), test-nil(MV16) -o 
			send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).;  test-diag-right(MV38, MV39, MV40, MV41, MV42), MV45 := head(MV44), MV44 := tail(MV40), MV43 := head(MV40), 
			not(test-nil(MV40)), not(test-nil(MV44)) -o (MV38 = MV43, MV39 = MV45 -o 1), OR (RestCoords := tail(MV44), (MV38 != MV43) || (MV39 != MV45) -o test-diag-right(MV38 - 1, MV39 + 1, RestCoords, MV41, MV42)).T   send-down(Nodes, Coords), !coord(MV23, MV2), MV23 = 7 -o final-state(Nodes, Coords).�   send-down(Nodes, Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Nodes, Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Nodes, Coords)@B}.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   test-y                                                               test-diag-left                                                       test-diag-right                                                      send-down                                                            final-state                                                      ��������   �                   �   � 
�  @      C   z   �   �     V  �  �  �  2  i  �  �    E  |  �  �  !  X  �  �  �  4  k  �  �    G  ~  �  �  #  Z  �  �  �  6  m  �  �  	  I	  �	  �	  �	  %
  \
  �
  �
    8  o  �  �    K  �  �  �  '  ^  �  @p pw2           
                              �  2                                       W  2                                         2                 	                     �  2                 
                     �  2                                      {  2                                      D  2                                        2                               	       �  2                	              
       �  2                       	              h  2                       
              1  2                                     �
  2                                     �
  2                                     �
  2                                     U
  2                                      
  2                                     �	  2                                     �	  2                                     y	  2                                     B	  2                                     	  2                                     �  2                                     �  2          "                            f  2         #                            /  2         $                             �  2         %       !                     �  2         &       "                     �  2         '       #                     S  2                $                       2                %                     �  2          *                       !       �  2         +       !               "       w  2         ,       (       !       #       @  2         -       )       "       $       	  2         .       *       #       %       �  2         /       +       $       &       �  2         &       ,       %       '       d  2         '       -       &       '       -  2          2       (       (       )       �  2         3       )       (       *       �  2         4       0       )       +       �  2         5       1       *       ,       Q  2         6       2       +       -         2         7       3       ,       .       �  2         .       4       -       /       �  2         /       5       .       /       u  2          :       0       0       1       >  2         ;       1       0       2         2         <       8       1       3       �  2         =       9       2       4       �  2         >       :       3       5       b  2         ?       ;       4       6       +  2         6       <       5       7       �  2         7       =       6       7       �  2          8       8       8       9       �  2         9       9       8       :       O  2         :       :       9       ;         2         ;       ;       :       <       �   2         <       <       ;       =       �   2         =       =       <       >       s   2         >       >       =       ?       <   2         ?       ?       >       ?          #         �    �  �  �  �  �  �  �  �  v  m  d  [  ?  6  -  $    �  �  �  �  �  �  �  �  �  �    c  Z  Q  H  ,  #      �  �  �  �  �  �  �  �  �  ~  u  l  P  G  >  5        �  �  �  �  �  �  �  �  �  t  k  b  Y  =  4  +  "    �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  }
  a
  X
  O
  F
  *
  !
  
  
  �	  �	  �	  �	  �	  �	  �	  �	  �	  |	  s	  j	  N	  E	  <	  3	  	  	  	  �  �  �  �  �  �  �  �  �  r  i  `  W  ;  2  )       �  �  �  �  �  �  �  �  �  �  {  _  V  M  D  (        �  �  �  �  �  �  �  �  �  z  q  h  L  C  :  1        �  �  �  �  �  �  �  �  �  p  g  ^  U  9  0  '      �  �  �  �  �  �  �  �  �  �  y  ]  T  K  B  &        �  �  �  �  �  �  �  �  �  x  o  f  J  A  8  /    
    �  �  �  �  �  �  �  �  �  n  e  \  S  7  .  %       �  �  �  �  �  �  �  �  �  �  w  [  R  I  @      o                  i    @%   % wA              ;    " 78`   @%   % " �� �        o                  i    @%   % wA              ;    " 78`   @%   % " �� �        N                  H               2    @! % %  % w� �        o                  i              Q    @"    :& "   :&% % % w� �        P                  J   Z S"  ;`	   � �"  <`   Y' { �        �                  �    "      >`   "     >`W              Q    @"    :& "   =&% % % w� �        �                  �   Z ST "  ;`   " ;`	   � �"  <`   " <`4   Y"     :&  "    :& ' { �        {                  u   "      >`   "    ?`8              2    @7a  c b w� �        �   	               �   Z ST "  ;`   " ;`	   � �"  <`   " <`4   Y"     :&  "    =& ' { �        J   
               D               .       @%   % w� �        �                  �    A              ;    " 78`   @%   % " �A              ;    " 78`   @%   % " �� �        