meld fil       @                                                                                                                                   	       	       
       
                                                                                                                                                                                                                                                                                                                             !       !       "       "       #       #       $       $       %       %       &       &       '       '       (       (       )       )       *       *       +       +       ,       ,       -       -       .       .       /       /       0       0       1       1       2       2       3       3       4       4       5       5       6       6       7       7       8       8       9       9       :       :       ;       ;       <       <       =       =       >       >       ?       ?        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).D   send-down(Coords), !coord(MV2, MV1), MV2 = 7 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                    _init                                                                 setcolor                                                              setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                            set-affinity                                                          set-cpu                                                                remove-priority                                                        left                                                                   right                                                                  down-right                                                             down-left                                                              coord                                                                 propagate-left                                                        propagate-right                                                       test-and-send-down                                                    send-down                                                             final-state                                                      ��������   �                   �   � 
�  @      o   �   ;  �    m  �  9  �    k  �  7  �    i  �  5  �    g  �  3	  �	  �	  e
  �
  1  �  �  c  �  /  �  �  a  �  -  �  �  _  �  +  �  �  ]  �  )  �  �  [  �  '  �  �  Y  �  %  �  �  W  �  #                 ,�.      �?�@p w2           
                                              ,�.      �?�2                                       �                ,�.      �?�2                                      S                ,�.      �?�2                 	                     �                ,�.      �?�2                 
                     �                ,�.      �?�2                                      !                ,�.      �?�2                                      �                ,�.      �?�2                                      U                ,�.       @�2                               	       �               ,�.       @�2                	              
       �               ,�.       @�2                       	              #               ,�.       @�2                       
              �               ,�.       @�2                                     W               ,�.       @�2                                     �               ,�.       @�2                                     �               ,�.       @�2                                     %                ,�.      @�2                                      �               ,�.      @�2                                     Y               ,�.      @�2                                     �               ,�.      @�2                                     �               ,�.      @�2                                     '               ,�.      @�2                                     �               ,�.      @�2                                     [               ,�.      @�2                                     �                ,�.      @�2          "                            �               ,�.      @�2         #                            )               ,�.      @�2         $                             �               ,�.      @�2         %       !                     ]               ,�.      @�2         &       "                     �               ,�.      @�2         '       #                     �               ,�.      @�2                $                     +               ,�.      @�2                %                     �                ,�.      @�2          *                       !       _               ,�.      @�2         +       !               "       �               ,�.      @�2         ,       (       !       #       �               ,�.      @�2         -       )       "       $       -               ,�.      @�2         .       *       #       %       �
               ,�.      @�2         /       +       $       &       a
               ,�.      @�2         &       ,       %       '       �	               ,�.      @�2         '       -       &       '       �	                ,�.      @�2          2       (       (       )       /	               ,�.      @�2         3       )       (       *       �               ,�.      @�2         4       0       )       +       c               ,�.      @�2         5       1       *       ,       �               ,�.      @�2         6       2       +       -       �               ,�.      @�2         7       3       ,       .       1               ,�.      @�2         .       4       -       /       �               ,�.      @�2         /       5       .       /       e                ,�.      @�2          :       0       0       1       �               ,�.      @�2         ;       1       0       2       �               ,�.      @�2         <       8       1       3       3               ,�.      @�2         =       9       2       4       �               ,�.      @�2         >       :       3       5       g               ,�.      @�2         ?       ;       4       6                      ,�.      @�2         6       <       5       7       �               ,�.      @�2         7       =       6       7       5                ,�.       @�2          8       8       8       9       �               ,�.       @�2         9       9       8       :       i               ,�.       @�2         :       :       9       ;                      ,�.       @�2         ;       ;       :       <       �               ,�.       @�2         <       <       ;       =       7               ,�.       @�2         =       =       <       >       �                ,�.       @�2         >       >       =       ?       k                ,�.       @�2         ?       ?       >       ?          #         �    �  �  �  �  ;  2  )     �  �  �  �  o  f  ]  T  	     �  �  �  �  �  �  =  4  +  "  �  �  �  �  q  h  _  V      �  �  �  �  �  �  ?  6  -  $  �  �  �  �  s  j  a  X      �  �  �  �  �  �  A  8  /  &  �  �  �  �  u  l  c  Z      �  �  �  �  �  �  C  :  1  (  �  �  �  �  w  n  e  \      �  �  �  �  �  �  E  <  3  *  �  �  �  �  y  p  g  ^    
    �  �  �  �  �  G  >  5  ,  �  �  �  �  {  r  i  `        �  �  �  �  �  I  @  7  .  �  �  �  �  }  t  k  b        �
  �
  �
  �
  �
  K
  B
  9
  0
  �	  �	  �	  �	  	  v	  m	  d	  	  	  	  �  �  �  �  �  M  D  ;  2  �  �  �  �  �  x  o  f      	     �  �  �  �  O  F  =  4  �  �  �  �  �  z  q  h          �  �  �  �  Q  H  ?  6  �  �  �  �  �  |  s  j          �  �  �  �  S  J  A  8  �  �  �  �  �  ~  u  l      e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )       @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        