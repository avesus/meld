meld fil       �                                                                                                                                   	       	       
       
                                                                                                                                                                                                                                                                                                                             !       !       "       "       #       #       $       $       %       %       &       &       '       '       (       (       )       )       *       *       +       +       ,       ,       -       -       .       .       /       /       0       0       1       1       2       2       3       3       4       4       5       5       6       6       7       7       8       8       9       9       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       A       A       B       B       C       C       D       D       E       E       F       F       G       G       H       H       I       I       J       J       K       K       L       L       M       M       N       N       O       O       P       P       Q       Q       R       R       S       S       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       [       [       \       \       ]       ]       ^       ^       _       _       `       `       a       a       b       b       c       c       d       d       e       e       f       f       g       g       h       h       i       i       j       j       k       k       l       l       m       m       n       n       o       o       p       p       q       q       r       r       s       s       t       t       u       u       v       v       w       w       x       x       y       y       z       z       {       {       |       |       }       }       ~       ~                     �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).E   send-down(Coords), !coord(MV2, MV1), MV2 = 11 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                    _init                                                                 setcolor                                                              setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                            set-affinity                                                          set-cpu                                                                remove-priority                                                        left                                                                   right                                                                  down-right                                                             down-left                                                              coord                                                                 propagate-left                                                        propagate-right                                                       test-and-send-down                                                    send-down                                                             final-state                                                      ��������   +(                   %(   � 
(  �      L   �   �     X  �  �  !  d  �  �  -  p  �  �  9  |  �    E  �  �    Q  �  �    ]  �  �  &  i  �  �  2	  u	  �	  �	  >
  �
  �
    J  �  �    V  �  �    b  �  �  +  n  �  �  7  z  �     C  �  �    O  �  �    [  �  �  $  g  �  �  0  s  �  �  <    �    H  �  �    T  �  �    `  �  �  )  l  �  �  5  x  �  �  A  �  �  
  M  �  �    Y  �  �  "  e  �  �  .  q  �  �  :   }   �   !  F!  �!  �!  "  R"  �"  �"  #  ^#  �#  �#  '$  j$  �$  �$  3%  v%  .      (@�@p w2                                         r%  .      (@�2                                       /%  .      (@�2                                      �$  .      (@�2                                      �$  .      (@�2                                      f$  .      (@�2                                      #$  .      (@�2                                      �#  .      (@�2                                      �#  .      (@�2                               	       Z#  .      (@�2       	                        
       #  .      (@�2       
   
              	              �"  .      (@�2                        
              �"  .      &@�2                                      N"  .      &@�2                                     "  .      &@�2                                     �!  .      &@�2                                     �!  .      &@�2                                     B!  .      &@�2                                     �   .      &@�2                                      �   .      &@�2         !                            y   .      &@�2         "                            6   .      &@�2      	   #                            �  .      &@�2      
                                �  .      &@�2                !                     m  .      $@�2          &                            *  .      $@�2         '                            �  .      $@�2         (       $                     �  .      $@�2         )       %                     a  .      $@�2         *       &                       .      $@�2         +       '                     �  .      $@�2         ,       (                     �  .      $@�2         -       )                      U  .      $@�2         .       *              !         .      $@�2      	   /       +               "       �  .      $@�2      
   "       ,       !       #       �  .      $@�2         #       -       "       #       I  .      "@�2          2       $       $       %         .      "@�2         3       %       $       &       �  .      "@�2         4       0       %       '       �  .      "@�2         5       1       &       (       =  .      "@�2         6       2       '       )       �  .      "@�2         7       3       (       *       �  .      "@�2         8       4       )       +       t  .      "@�2         9       5       *       ,       1  .      "@�2         :       6       +       -       �  .      "@�2      	   ;       7       ,       .       �  .      "@�2      
   .       8       -       /       h  .      "@�2         /       9       .       /       %  .       @�2          >       0       0       1       �  .       @�2         ?       1       0       2       �  .       @�2         @       <       1       3       \  .       @�2         A       =       2       4         .       @�2         B       >       3       5       �  .       @�2         C       ?       4       6       �  .       @�2         D       @       5       7       P  .       @�2         E       A       6       8         .       @�2         F       B       7       9       �  .       @�2      	   G       C       8       :       �  .       @�2      
   :       D       9       ;       D  .       @�2         ;       E       :       ;         .      @�2          J       <       <       =       �  .      @�2         K       =       <       >       {  .      @�2         L       H       =       ?       8  .      @�2         M       I       >       @       �  .      @�2         N       J       ?       A       �  .      @�2         O       K       @       B       o  .      @�2         P       L       A       C       ,  .      @�2         Q       M       B       D       �  .      @�2         R       N       C       E       �  .      @�2      	   S       O       D       F       c  .      @�2      
   F       P       E       G          .      @�2         G       Q       F       G       �  .      @�2          V       H       H       I       �  .      @�2         W       I       H       J       W  .      @�2         X       T       I       K         .      @�2         Y       U       J       L       �  .      @�2         Z       V       K       M       �  .      @�2         [       W       L       N       K  .      @�2         \       X       M       O         .      @�2         ]       Y       N       P       �  .      @�2         ^       Z       O       Q       �  .      @�2      	   _       [       P       R       ?  .      @�2      
   R       \       Q       S       �  .      @�2         S       ]       R       S       �  .      @�2          b       T       T       U       v  .      @�2         c       U       T       V       3  .      @�2         d       `       U       W       �  .      @�2         e       a       V       X       �  .      @�2         f       b       W       Y       j  .      @�2         g       c       X       Z       '  .      @�2         h       d       Y       [       �  .      @�2         i       e       Z       \       �  .      @�2         j       f       [       ]       ^  .      @�2      	   k       g       \       ^         .      @�2      
   ^       h       ]       _       �  .      @�2         _       i       ^       _       �  .      @�2          n       `       `       a       R  .      @�2         o       a       `       b         .      @�2         p       l       a       c       �  .      @�2         q       m       b       d       �  .      @�2         r       n       c       e       F  .      @�2         s       o       d       f         .      @�2         t       p       e       g       �
  .      @�2         u       q       f       h       }
  .      @�2         v       r       g       i       :
  .      @�2      	   w       s       h       j       �	  .      @�2      
   j       t       i       k       �	  .      @�2         k       u       j       k       q	  .      @�2   	       z       l       l       m       .	  .      @�2   	      {       m       l       n       �  .      @�2   	      |       x       m       o       �  .      @�2   	      }       y       n       p       e  .      @�2   	      ~       z       o       q       "  .      @�2   	             {       p       r       �  .      @�2   	      �       |       q       s       �  .      @�2   	      �       }       r       t       Y  .      @�2   	      �       ~       s       u         .      @�2   	   	   �              t       v       �  .      @�2   	   
   v       �       u       w       �  .      @�2   	      w       �       v       w       M  .       @�2   
       �       x       x       y       
  .       @�2   
      �       y       x       z       �  .       @�2   
      �       �       y       {       �  .       @�2   
      �       �       z       |       A  .       @�2   
      �       �       {       }       �  .       @�2   
      �       �       |       ~       �  .       @�2   
      �       �       }              x  .       @�2   
      �       �       ~       �       5  .       @�2   
      �       �              �       �  .       @�2   
   	   �       �       �       �       �  .       @�2   
   
   �       �       �       �       l  .       @�2   
      �       �       �       �       )  .      �?�2          �       �       �       �       �  .      �?�2         �       �       �       �       �  .      �?�2         �       �       �       �       `  .      �?�2         �       �       �       �         .      �?�2         �       �       �       �       �  .      �?�2         �       �       �       �       �  .      �?�2         �       �       �       �       T  .      �?�2         �       �       �       �         .      �?�2         �       �       �       �       �   .      �?�2      	   �       �       �       �       �   .      �?�2      
   �       �       �       �       H   .      �?�2         �       �       �       �          #         � @  (  (  �'  �'  �'  �'  �'  �'  �'  �'  y'  p'  H'  ?'  6'  -'  '  �&  �&  �&  �&  �&  �&  �&  &  v&  m&  d&  <&  3&  *&  !&  �%  �%  �%  �%  �%  �%  �%  �%  s%  j%  a%  X%  0%  '%  %  %  �$  �$  �$  �$  �$  �$  �$  �$  g$  ^$  U$  L$  $$  $  $  	$  �#  �#  �#  �#  �#  �#  �#  �#  [#  R#  I#  @#  #  #  #  �"  �"  �"  �"  �"  �"  �"  �"  w"  O"  F"  ="  4"  "  "  �!  �!  �!  �!  �!  �!  �!  }!  t!  k!  C!  :!  1!  (!   !  �   �   �   �   �   �   �   z   q   h   _   7   .   %      �  �  �  �  �  �  �  �  n  e  \  S  +  "      �  �  �  �  �  �  �  �  b  Y  P  G          �  �  �  �  �  �  �  ~  V  M  D  ;    
    �  �  �  �  �  �  �  {  r  J  A  8  /    �  �  �  �  �  �  �  �  x  o  f  >  5  ,  #  �  �  �  �  �  �  �  �  u  l  c  Z  2  )       �  �  �  �  �  �  �  �  i  `  W  N  &        �  �  �  �  �  �  �  �  ]  T  K  B        �  �  �  �  �  �  �  �  y  Q  H  ?  6      �  �  �  �  �  �  �    v  m  E  <  3  *    �  �  �  �  �  �  �  |  s  j  a  9  0  '    �  �  �  �  �  �  �  �  p  g  ^  U  -  $      �  �  �  �  �  �  �  �  d  [  R  I  !        �  �  �  �  �  �  �  �  X  O  F  =        �  �  �  �  �  �  �  }  t  L  C  :  1  	     �  �  �  �  �  �  �  z  q  h  @  7  .  %  �  �  �  �  �  �  �  �  w  n  e  \  4  +  "    �  �  �  �  �  �  �  �  k  b  Y  P  (        �  �  �  �  �  �  �  �  _  V  M  D      
    �  �  �  �  �  �  �  {  S  J  A  8      �  �  �  �  �  �  �  �  x  o  G  >  5  ,    �
  �
  �
  �
  �
  �
  �
  ~
  u
  l
  c
  ;
  2
  )
   
  �	  �	  �	  �	  �	  �	  �	  �	  r	  i	  `	  W	  /	  &	  	  	  �  �  �  �  �  �  �  �  f  ]  T  K  #        �  �  �  �  �  �  �  �  Z  Q  H  ?        �  �  �  �  �  �  �    v  N  E  <  3      �  �  �  �  �  �  �  |  s  j  B  9  0  '  �  �  �  �  �  �  �  �  y  p  g  ^  6  -  $    �  �  �  �  �  �  �  �  m  d  [  R  *  !      �  �  �  �  �  �  �  �      e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )       @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        