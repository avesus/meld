meld fil       �                                                                                                                                   	       	       
       
                                                                                                                                                                                                                                                                                                                             !       !       "       "       #       #       $       $       %       %       &       &       '       '       (       (       )       )       *       *       +       +       ,       ,       -       -       .       .       /       /       0       0       1       1       2       2       3       3       4       4       5       5       6       6       7       7       8       8       9       9       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       A       A       B       B       C       C       D       D       E       E       F       F       G       G       H       H       I       I       J       J       K       K       L       L       M       M       N       N       O       O       P       P       Q       Q       R       R       S       S       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       [       [       \       \       ]       ]       ^       ^       _       _       `       `       a       a       b       b       c       c       d       d       e       e       f       f       g       g       h       h       i       i       j       j       k       k       l       l       m       m       n       n       o       o       p       p       q       q       r       r       s       s       t       t       u       u       v       v       w       w       x       x       y       y       z       z       {       {       |       |       }       }       ~       ~                     �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).E   send-down(Coords), !coord(MV2, MV1), MV2 = 11 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                    _init                                                                 setcolor                                                              setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                            set-affinity                                                          set-cpu                                                                remove-priority                                                        left                                                                   right                                                                  down-right                                                             down-left                                                              coord                                                                 propagate-left                                                        propagate-right                                                       test-and-send-down                                                    send-down                                                             final-state                                                      ��������   �;                   �;   � 
�;  �      o   �   ;  �    m  �  9  �    k  �  7  �    i  �  5  �    g  �  3	  �	  �	  e
  �
  1  �  �  c  �  /  �  �  a  �  -  �  �  _  �  +  �  �  ]  �  )  �  �  [  �  '  �  �  Y  �  %  �  �  W  �  #  �  �  U  �  !  �  �  S  �    �  �  Q  �    �  �  O   �   !  �!  �!  M"  �"  #  #  �#  K$  �$  %  }%  �%  I&  �&  '  {'  �'  G(  �(  )  y)  �)  E*  �*  +  w+  �+  C,  �,  -  u-  �-  A.  �.  /  s/  �/  ?0  �0  1  q1  �1  =2  �2  	3  o3  �3  ;4  �4  5  m5  �5  96  �6  7  k7  �7  78  �8  9                 ,�.      �?�@p w2                                         �8                ,�.      �?�2                                       �8                ,�.      �?�2                                      38                ,�.      �?�2                                      �7                ,�.      �?�2                                      g7                ,�.      �?�2                                      7                ,�.      �?�2                                      �6                ,�.      �?�2                                      56                ,�.      �?�2                               	       �5      	          ,�.      �?�2       	                        
       i5      
          ,�.      �?�2       
   
              	              5                ,�.      �?�2                        
              �4                ,�.       @�2                                      74               ,�.       @�2                                     �3               ,�.       @�2                                     k3               ,�.       @�2                                     3               ,�.       @�2                                     �2               ,�.       @�2                                     92               ,�.       @�2                                      �1               ,�.       @�2         !                            m1               ,�.       @�2         "                            1     	          ,�.       @�2      	   #                            �0     
          ,�.       @�2      
                                ;0               ,�.       @�2                !                     �/                ,�.      @�2          &                            o/               ,�.      @�2         '                            	/               ,�.      @�2         (       $                     �.               ,�.      @�2         )       %                     =.               ,�.      @�2         *       &                     �-               ,�.      @�2         +       '                     q-               ,�.      @�2         ,       (                     -               ,�.      @�2         -       )                      �,               ,�.      @�2         .       *              !       ?,     	          ,�.      @�2      	   /       +               "       �+     
          ,�.      @�2      
   "       ,       !       #       s+               ,�.      @�2         #       -       "       #       +                ,�.      @�2          2       $       $       %       �*               ,�.      @�2         3       %       $       &       A*               ,�.      @�2         4       0       %       '       �)               ,�.      @�2         5       1       &       (       u)               ,�.      @�2         6       2       '       )       )               ,�.      @�2         7       3       (       *       �(               ,�.      @�2         8       4       )       +       C(               ,�.      @�2         9       5       *       ,       �'               ,�.      @�2         :       6       +       -       w'     	          ,�.      @�2      	   ;       7       ,       .       '     
          ,�.      @�2      
   .       8       -       /       �&               ,�.      @�2         /       9       .       /       E&                ,�.      @�2          >       0       0       1       �%               ,�.      @�2         ?       1       0       2       y%               ,�.      @�2         @       <       1       3       %               ,�.      @�2         A       =       2       4       �$               ,�.      @�2         B       >       3       5       G$               ,�.      @�2         C       ?       4       6       �#               ,�.      @�2         D       @       5       7       {#               ,�.      @�2         E       A       6       8       #               ,�.      @�2         F       B       7       9       �"     	          ,�.      @�2      	   G       C       8       :       I"     
          ,�.      @�2      
   :       D       9       ;       �!               ,�.      @�2         ;       E       :       ;       }!                ,�.      @�2          J       <       <       =       !               ,�.      @�2         K       =       <       >       �                ,�.      @�2         L       H       =       ?       K                ,�.      @�2         M       I       >       @       �               ,�.      @�2         N       J       ?       A                      ,�.      @�2         O       K       @       B                      ,�.      @�2         P       L       A       C       �               ,�.      @�2         Q       M       B       D       M               ,�.      @�2         R       N       C       E       �     	          ,�.      @�2      	   S       O       D       F       �     
          ,�.      @�2      
   F       P       E       G                      ,�.      @�2         G       Q       F       G       �                ,�.      @�2          V       H       H       I       O               ,�.      @�2         W       I       H       J       �               ,�.      @�2         X       T       I       K       �               ,�.      @�2         Y       U       J       L                      ,�.      @�2         Z       V       K       M       �               ,�.      @�2         [       W       L       N       Q               ,�.      @�2         \       X       M       O       �               ,�.      @�2         ]       Y       N       P       �               ,�.      @�2         ^       Z       O       Q            	          ,�.      @�2      	   _       [       P       R       �     
          ,�.      @�2      
   R       \       Q       S       S               ,�.      @�2         S       ]       R       S       �                ,�.       @�2          b       T       T       U       �               ,�.       @�2         c       U       T       V       !               ,�.       @�2         d       `       U       W       �               ,�.       @�2         e       a       V       X       U               ,�.       @�2         f       b       W       Y       �               ,�.       @�2         g       c       X       Z       �               ,�.       @�2         h       d       Y       [       #               ,�.       @�2         i       e       Z       \       �               ,�.       @�2         j       f       [       ]       W     	          ,�.       @�2      	   k       g       \       ^       �     
          ,�.       @�2      
   ^       h       ]       _       �               ,�.       @�2         _       i       ^       _       %                ,�.      "@�2          n       `       `       a       �               ,�.      "@�2         o       a       `       b       Y               ,�.      "@�2         p       l       a       c       �               ,�.      "@�2         q       m       b       d       �               ,�.      "@�2         r       n       c       e       '               ,�.      "@�2         s       o       d       f       �               ,�.      "@�2         t       p       e       g       [               ,�.      "@�2         u       q       f       h       �               ,�.      "@�2         v       r       g       i       �     	          ,�.      "@�2      	   w       s       h       j       )     
          ,�.      "@�2      
   j       t       i       k       �               ,�.      "@�2         k       u       j       k       ]  	              ,�.      $@�2   	       z       l       l       m       �  	             ,�.      $@�2   	      {       m       l       n       �  	             ,�.      $@�2   	      |       x       m       o       +  	             ,�.      $@�2   	      }       y       n       p       �  	             ,�.      $@�2   	      ~       z       o       q       _  	             ,�.      $@�2   	             {       p       r       �  	             ,�.      $@�2   	      �       |       q       s       �  	             ,�.      $@�2   	      �       }       r       t       -  	             ,�.      $@�2   	      �       ~       s       u       �
  	   	          ,�.      $@�2   	   	   �              t       v       a
  	   
          ,�.      $@�2   	   
   v       �       u       w       �	  	             ,�.      $@�2   	      w       �       v       w       �	  
              ,�.      &@�2   
       �       x       x       y       /	  
             ,�.      &@�2   
      �       y       x       z       �  
             ,�.      &@�2   
      �       �       y       {       c  
             ,�.      &@�2   
      �       �       z       |       �  
             ,�.      &@�2   
      �       �       {       }       �  
             ,�.      &@�2   
      �       �       |       ~       1  
             ,�.      &@�2   
      �       �       }              �  
             ,�.      &@�2   
      �       �       ~       �       e  
             ,�.      &@�2   
      �       �              �       �  
   	          ,�.      &@�2   
   	   �       �       �       �       �  
   
          ,�.      &@�2   
   
   �       �       �       �       3  
             ,�.      &@�2   
      �       �       �       �       �                ,�.      (@�2          �       �       �       �       g               ,�.      (@�2         �       �       �       �                      ,�.      (@�2         �       �       �       �       �               ,�.      (@�2         �       �       �       �       5               ,�.      (@�2         �       �       �       �       �               ,�.      (@�2         �       �       �       �       i               ,�.      (@�2         �       �       �       �                      ,�.      (@�2         �       �       �       �       �               ,�.      (@�2         �       �       �       �       7     	          ,�.      (@�2      	   �       �       �       �       �      
          ,�.      (@�2      
   �       �       �       �       k                ,�.      (@�2         �       �       �       �          #         � @  �;  �;  �;  �;  [;  R;  I;  @;  �:  �:  �:  �:  �:  �:  }:  t:  ):   :  :  :  �9  �9  �9  �9  ]9  T9  K9  B9  �8  �8  �8  �8  �8  �8  8  v8  +8  "8  8  8  �7  �7  �7  �7  _7  V7  M7  D7  �6  �6  �6  �6  �6  �6  �6  x6  -6  $6  6  6  �5  �5  �5  �5  a5  X5  O5  F5  �4  �4  �4  �4  �4  �4  �4  z4  /4  &4  4  4  �3  �3  �3  �3  c3  Z3  Q3  H3  �2  �2  �2  �2  �2  �2  �2  |2  12  (2  2  2  �1  �1  �1  �1  e1  \1  S1  J1  �0  �0  �0  �0  �0  �0  �0  ~0  30  *0  !0  0  �/  �/  �/  �/  g/  ^/  U/  L/  /  �.  �.  �.  �.  �.  �.  �.  5.  ,.  #.  .  �-  �-  �-  �-  i-  `-  W-  N-  -  �,  �,  �,  �,  �,  �,  �,  7,  .,  %,  ,  �+  �+  �+  �+  k+  b+  Y+  P+  +  �*  �*  �*  �*  �*  �*  �*  9*  0*  '*  *  �)  �)  �)  �)  m)  d)  [)  R)  )  �(  �(  �(  �(  �(  �(  �(  ;(  2(  )(   (  �'  �'  �'  �'  o'  f'  ]'  T'  	'   '  �&  �&  �&  �&  �&  �&  =&  4&  +&  "&  �%  �%  �%  �%  q%  h%  _%  V%  %  %  �$  �$  �$  �$  �$  �$  ?$  6$  -$  $$  �#  �#  �#  �#  s#  j#  a#  X#  #  #  �"  �"  �"  �"  �"  �"  A"  8"  /"  &"  �!  �!  �!  �!  u!  l!  c!  Z!  !  !  �   �   �   �   �   �   C   :   1   (   �  �  �  �  w  n  e  \      �  �  �  �  �  �  E  <  3  *  �  �  �  �  y  p  g  ^    
    �  �  �  �  �  G  >  5  ,  �  �  �  �  {  r  i  `        �  �  �  �  �  I  @  7  .  �  �  �  �  }  t  k  b        �  �  �  �  �  K  B  9  0  �  �  �  �    v  m  d        �  �  �  �  �  M  D  ;  2  �  �  �  �  �  x  o  f      	     �  �  �  �  O  F  =  4  �  �  �  �  �  z  q  h          �  �  �  �  Q  H  ?  6  �  �  �  �  �  |  s  j          �  �  �  �  S  J  A  8  �  �  �  �  �  ~  u  l  !        �  �  �  �  U  L  C  :  �  �  �  �  �  �  w  n  #        �  �  �  �  W  N  E  <  �  �  �  �  �  �  y  p  %      
  �
  �
  �
  �
  Y
  P
  G
  >
  �	  �	  �	  �	  �	  �	  {	  r	  '	  	  	  	  �  �  �  �  [  R  I  @  �  �  �  �  �  �  }  t  )         �  �  �  �  ]  T  K  B  �  �  �  �  �  �    v  +  "      �  �  �  �  _  V  M  D  �  �  �  �  �  �  �  x  -  $      �  �  �  �      e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )       @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        