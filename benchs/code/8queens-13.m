meld fil       �                                                                                                                                   	       	       
       
                                                                                                                                                                                                                                                                                                                             !       !       "       "       #       #       $       $       %       %       &       &       '       '       (       (       )       )       *       *       +       +       ,       ,       -       -       .       .       /       /       0       0       1       1       2       2       3       3       4       4       5       5       6       6       7       7       8       8       9       9       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       A       A       B       B       C       C       D       D       E       E       F       F       G       G       H       H       I       I       J       J       K       K       L       L       M       M       N       N       O       O       P       P       Q       Q       R       R       S       S       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       [       [       \       \       ]       ]       ^       ^       _       _       `       `       a       a       b       b       c       c       d       d       e       e       f       f       g       g       h       h       i       i       j       j       k       k       l       l       m       m       n       n       o       o       p       p       q       q       r       r       s       s       t       t       u       u       v       v       w       w       x       x       y       y       z       z       {       {       |       |       }       }       ~       ~                     �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).E   send-down(Coords), !coord(MV2, MV1), MV2 = 12 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                    _init                                                                 setcolor                                                              setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                            set-affinity                                                          set-cpu                                                                remove-priority                                                        left                                                                   right                                                                  down-right                                                             down-left                                                              coord                                                                 propagate-left                                                        propagate-right                                                       test-and-send-down                                                    send-down                                                             final-state                                                      ��������   .'                   ('   � 
'  �      @   w   �   �     S  �  �  �  /  f  �  �    B  y  �  �    U  �  �  �  1  h  �  �    D  {  �  �     W  �  �  �  3  j  �  �  	  F	  }	  �	  �	  "
  Y
  �
  �
  �
  5  l  �  �    H    �  �  $  [  �  �     7  n  �  �    J  �  �  �  &  ]  �  �    9  p  �  �    L  �  �  �  (  _  �  �    ;  r  �  �    N  �  �  �  *  a  �  �    =  t  �  �    P  �  �  �  ,  c  �  �    ?  v  �  �    R  �  �  �  .  e  �  �  
  A  x  �  �    T  �  �  �  0  g  �  �     C   z   �   �   !  V!  �!  �!  �!  2"  i"  �"  �"  #  E#  |#  �#  �#  !$  @p w2                                         $  2                                       �#  2                                      �#  2                                      x#  2                                      A#  2                                      
#  2                                      �"  2                                      �"  2                               	       e"  2       	                        
       ."  2       
                 	              �!  2                        
              �!  2                                      �!  2                                      R!  2                                     !  2                                     �   2                                     �   2                                      v   2         !                            ?   2         "                               2         #                            �  2         $                             �  2      	   %       !                     c  2      
   &       "                     ,  2                #                     �  2                $                     �  2          )                            �  2         *                            P  2         +       '                       2         ,       (                     �  2         -       )                     �  2         .       *                      t  2         /       +              !       =  2         0       ,               "         2         1       -       !       #       �  2      	   2       .       "       $       �  2      
   3       /       #       %       a  2         %       0       $       &       *  2         &       1       %       &       �  2          6       '       '       (       �  2         7       (       '       )       �  2         8       4       (       *       N  2         9       5       )       +         2         :       6       *       ,       �  2         ;       7       +       -       �  2         <       8       ,       .       r  2         =       9       -       /       ;  2         >       :       .       0         2      	   ?       ;       /       1       �  2      
   @       <       0       2       �  2         2       =       1       3       _  2         3       >       2       3       (  2          C       4       4       5       �  2         D       5       4       6       �  2         E       A       5       7       �  2         F       B       6       8       L  2         G       C       7       9         2         H       D       8       :       �  2         I       E       9       ;       �  2         J       F       :       <       p  2         K       G       ;       =       9  2      	   L       H       <       >         2      
   M       I       =       ?       �  2         ?       J       >       @       �  2         @       K       ?       @       ]  2          P       A       A       B       &  2         Q       B       A       C       �  2         R       N       B       D       �  2         S       O       C       E       �  2         T       P       D       F       J  2         U       Q       E       G         2         V       R       F       H       �  2         W       S       G       I       �  2         X       T       H       J       n  2      	   Y       U       I       K       7  2      
   Z       V       J       L          2         L       W       K       M       �  2         M       X       L       M       �  2          ]       N       N       O       [  2         ^       O       N       P       $  2         _       [       O       Q       �  2         `       \       P       R       �  2         a       ]       Q       S         2         b       ^       R       T       H  2         c       _       S       U         2         d       `       T       V       �  2         e       a       U       W       �  2      	   f       b       V       X       l  2      
   g       c       W       Y       5  2         Y       d       X       Z       �  2         Z       e       Y       Z       �  2          j       [       [       \       �  2         k       \       [       ]       Y  2         l       h       \       ^       "  2         m       i       ]       _       �  2         n       j       ^       `       �  2         o       k       _       a       }  2         p       l       `       b       F  2         q       m       a       c         2         r       n       b       d       �  2      	   s       o       c       e       �  2      
   t       p       d       f       j  2         f       q       e       g       3  2         g       r       f       g       �  2          w       h       h       i       �  2         x       i       h       j       �  2         y       u       i       k       W  2         z       v       j       l          2         {       w       k       m       �  2         |       x       l       n       �  2         }       y       m       o       {  2         ~       z       n       p       D  2                {       o       q         2      	   �       |       p       r       �  2      
   �       }       q       s       �  2         s       ~       r       t       h  2         t              s       t       1  2   	       �       u       u       v       �
  2   	      �       v       u       w       �
  2   	      �       �       v       x       �
  2   	      �       �       w       y       U
  2   	      �       �       x       z       
  2   	      �       �       y       {       �	  2   	      �       �       z       |       �	  2   	      �       �       {       }       y	  2   	      �       �       |       ~       B	  2   	   	   �       �       }              	  2   	   
   �       �       ~       �       �  2   	      �       �              �       �  2   	      �       �       �       �       f  2   
       �       �       �       �       /  2   
      �       �       �       �       �  2   
      �       �       �       �       �  2   
      �       �       �       �       �  2   
      �       �       �       �       S  2   
      �       �       �       �         2   
      �       �       �       �       �  2   
      �       �       �       �       �  2   
      �       �       �       �       w  2   
   	   �       �       �       �       @  2   
   
   �       �       �       �       	  2   
      �       �       �       �       �  2   
      �       �       �       �       �  2          �       �       �       �       d  2         �       �       �       �       -  2         �       �       �       �       �  2         �       �       �       �       �  2         �       �       �       �       �  2         �       �       �       �       Q  2         �       �       �       �         2         �       �       �       �       �  2         �       �       �       �       �  2      	   �       �       �       �       u  2      
   �       �       �       �       >  2         �       �       �       �         2         �       �       �       �       �  2          �       �       �       �       �  2         �       �       �       �       b  2         �       �       �       �       +  2         �       �       �       �       �  2         �       �       �       �       �  2         �       �       �       �       �  2         �       �       �       �       O  2         �       �       �       �         2         �       �       �       �       �   2      	   �       �       �       �       �   2      
   �       �       �       �       s   2         �       �       �       �       <   2         �       �       �       �          #         � �  '  '  '  �&  �&  �&  �&  �&  �&  �&  �&  �&  o&  f&  ]&  T&  8&  /&  &&  &  &  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  x%  \%  S%  J%  A%  %%  %  %  
%  �$  �$  �$  �$  �$  �$  �$  �$  �$  w$  n$  e$  I$  @$  7$  .$  $  	$   $  �#  �#  �#  �#  �#  �#  �#  �#  �#  m#  d#  [#  R#  6#  -#  $#  #  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  "  v"  Z"  Q"  H"  ?"  #"  "  "  "  �!  �!  �!  �!  �!  �!  �!  �!  ~!  u!  l!  c!  G!  >!  5!  ,!  !  !  �   �   �   �   �   �   �   �   �   �   k   b   Y   P   4   +   "      �  �  �  �  �  �  �  �  �  �  }  t  X  O  F  =  !        �  �  �  �  �  �  �  �  |  s  j  a  E  <  3  *      �  �  �  �  �  �  �  �  �  �  i  `  W  N  2  )       �  �  �  �  �  �  �  �  �  �  {  r  V  M  D  ;          �  �  �  �  �  �  �  �  z  q  h  _  C  :  1  (      �  �  �  �  �  �  �  �  �  �  g  ^  U  L  0  '      �  �  �  �  �  �  �  �  �  �  y  p  T  K  B  9          �  �  �  �  �  �  �  �  x  o  f  ]  A  8  /  &  
    �  �  �  �  �  �  �  �  �  �  e  \  S  J  .  %      �  �  �  �  �  �  �  �  �  �  w  n  R  I  @  7      	     �  �  �  �  �  �  �  �  v  m  d  [  ?  6  -  $    �  �  �  �  �  �  �  �  �  �    c  Z  Q  H  ,  #      �  �  �  �  �  �  �  �  �  ~  u  l  P  G  >  5        �  �  �  �  �  �  �  �  �  t  k  b  Y  =  4  +  "    �  �  �  �  �  �  �  �  �  �  }  a  X  O  F  *  !      �  �  �  �  �  �  �  �  �  |  s  j  N  E  <  3        �  �  �  �  �  �  �  �  �  r  i  `  W  ;  2  )       �  �  �  �  �  �  �  �  �  �  {  _  V  M  D  (        �  �  �  �  �  �  �  �  �  z  q  h  L  C  :  1        �  �  �  �  �  �  �  �  �  p  g  ^  U  9  0  '      �  �  �  �  �  �  �  �  �  �  y  ]  T  K  B  &        �
  �
  �
  �
  �
  �
  �
  �
  �
  x
  o
  f
  J
  A
  8
  /
  
  

  
  �	  �	  �	  �	  �	  �	  �	  �	  �	  n	  e	  \	  S	  7	  .	  %	  	   	  �  �  �  �  �  �  �  �  �  �  w  [  R  I  @  $      	  �  �  �  �  �  �  �  �    v  m  d  H  ?  6  -      �  �  �  �  �  �  �  �  �  �  l  c  Z  Q  5  ,  #    �  �  �  �  �  �  �  �  �  �  ~  u  Y  P  G  >  "        �  �  �  �  �  �  �  �  }  t  k  b  F  =  4  +      �  �  �  �  �  �  �  �  �  �  j  a  X  O  3  *  !    �  �  �  �      e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )       @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        