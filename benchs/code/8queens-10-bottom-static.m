meld fil       d                                                                                                                                   	       	       
       
                                                                                                                                                                                                                                                                                                                             !       !       "       "       #       #       $       $       %       %       &       &       '       '       (       (       )       )       *       *       +       +       ,       ,       -       -       .       .       /       /       0       0       1       1       2       2       3       3       4       4       5       5       6       6       7       7       8       8       9       9       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       A       A       B       B       C       C       D       D       E       E       F       F       G       G       H       H       I       I       J       J       K       K       L       L       M       M       N       N       O       O       P       P       Q       Q       R       R       S       S       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       [       [       \       \       ]       ]       ^       ^       _       _       `       `       a       a       b       b       c       c        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.�    -o (test-and-send-down(Coords), !coord(X, Y), not(queens_violation(Y, Coords)) -o send-down(cons(Y,Coords))), OR (test-and-send-down(Coords), !coord(X, Y) -o 1).D   send-down(Coords), !coord(MV2, MV1), MV2 = 9 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                    _init                                                                 setcolor                                                              setedgelabel                                                          write-string                                                          setcolor2                                                              stop-program                                                          set-priority                                                          add-priority                                                           schedule-next                                                         set-default-priority                                                   set-moving                                                             set-static                                                            set-affinity                                                          set-cpu                                                                remove-priority                                                        left                                                                   right                                                                  down-right                                                             down-left                                                              coord                                                                 propagate-left                                                        propagate-right                                                       test-and-send-down                                                    send-down                                                             final-state                                                      ��������   �)                   �)   � 
y)  d      o   �   ;  �    m  �  9  �    k  �  7  �    i  �  5  �    g  �  3	  �	  �	  e
  �
  1  �  �  c  �  /  �  �  a  �  -  �  �  _  �  +  �  �  ]  �  )  �  �  [  �  '  �  �  Y  �  %  �  �  W  �  #  �  �  U  �  !  �  �  S  �    �  �  Q  �    �  �  O   �   !  �!  �!  M"  �"  #  #  �#  K$  �$  %  }%  �%  I&  �&  '  {'          
   
    ,�.      �?�@p w2                                         w'         
   
    ,�.      �?�2                                       '         
   
    ,�.      �?�2                 
                     �&         
   
    ,�.      �?�2                                      E&         
   
    ,�.      �?�2                                      �%         
   
    ,�.      �?�2                                      y%         
   
    ,�.      �?�2                                      %         
   
    ,�.      �?�2                                      �$         
   
    ,�.      �?�2                               	       G$      	   
   
    ,�.      �?�2       	   	                     	       �#         
   
    ,�.       @�2                 
       
              {#        
   
    ,�.       @�2                       
              #        
   
    ,�.       @�2                                     �"        
   
    ,�.       @�2                                     I"        
   
    ,�.       @�2                                     �!        
   
    ,�.       @�2                                     }!        
   
    ,�.       @�2                                     !        
   
    ,�.       @�2                                     �         
   
    ,�.       @�2                                     K      	   
   
    ,�.       @�2      	                               �         
   
    ,�.      @�2                                               
   
    ,�.      @�2         !                                    
   
    ,�.      @�2         "                            �        
   
    ,�.      @�2         #                            M        
   
    ,�.      @�2         $                             �        
   
    ,�.      @�2         %       !                     �        
   
    ,�.      @�2         &       "                             
   
    ,�.      @�2         '       #                     �        
   
    ,�.      @�2                $                     O     	   
   
    ,�.      @�2      	          %                     �         
   
    ,�.      @�2          *                            �        
   
    ,�.      @�2         +                                     
   
    ,�.      @�2         ,       (              !       �        
   
    ,�.      @�2         -       )               "       Q        
   
    ,�.      @�2         .       *       !       #       �        
   
    ,�.      @�2         /       +       "       $       �        
   
    ,�.      @�2         0       ,       #       %               
   
    ,�.      @�2         1       -       $       &       �        
   
    ,�.      @�2         &       .       %       '       S     	   
   
    ,�.      @�2      	   '       /       &       '       �         
   
    ,�.      @�2          4       (       (       )       �        
   
    ,�.      @�2         5       )       (       *       !        
   
    ,�.      @�2         6       2       )       +       �        
   
    ,�.      @�2         7       3       *       ,       U        
   
    ,�.      @�2         8       4       +       -       �        
   
    ,�.      @�2         9       5       ,       .       �        
   
    ,�.      @�2         :       6       -       /       #        
   
    ,�.      @�2         ;       7       .       0       �        
   
    ,�.      @�2         0       8       /       1       W     	   
   
    ,�.      @�2      	   1       9       0       1       �         
   
    ,�.      @�2          >       2       2       3       �        
   
    ,�.      @�2         ?       3       2       4       %        
   
    ,�.      @�2         @       <       3       5       �        
   
    ,�.      @�2         A       =       4       6       Y        
   
    ,�.      @�2         B       >       5       7       �        
   
    ,�.      @�2         C       ?       6       8       �        
   
    ,�.      @�2         D       @       7       9       '        
   
    ,�.      @�2         E       A       8       :       �        
   
    ,�.      @�2         :       B       9       ;       [     	   
   
    ,�.      @�2      	   ;       C       :       ;       �         
   
    ,�.      @�2          H       <       <       =       �        
   
    ,�.      @�2         I       =       <       >       )        
   
    ,�.      @�2         J       F       =       ?       �        
   
    ,�.      @�2         K       G       >       @       ]        
   
    ,�.      @�2         L       H       ?       A       �        
   
    ,�.      @�2         M       I       @       B       �        
   
    ,�.      @�2         N       J       A       C       +        
   
    ,�.      @�2         O       K       B       D       �        
   
    ,�.      @�2         D       L       C       E       _     	   
   
    ,�.      @�2      	   E       M       D       E       �         
   
    ,�.       @�2          R       F       F       G       �        
   
    ,�.       @�2         S       G       F       H       -        
   
    ,�.       @�2         T       P       G       I       �
        
   
    ,�.       @�2         U       Q       H       J       a
        
   
    ,�.       @�2         V       R       I       K       �	        
   
    ,�.       @�2         W       S       J       L       �	        
   
    ,�.       @�2         X       T       K       M       /	        
   
    ,�.       @�2         Y       U       L       N       �        
   
    ,�.       @�2         N       V       M       O       c     	   
   
    ,�.       @�2      	   O       W       N       O       �         
   
    ,�.      "@�2          \       P       P       Q       �        
   
    ,�.      "@�2         ]       Q       P       R       1        
   
    ,�.      "@�2         ^       Z       Q       S       �        
   
    ,�.      "@�2         _       [       R       T       e        
   
    ,�.      "@�2         `       \       S       U       �        
   
    ,�.      "@�2         a       ]       T       V       �        
   
    ,�.      "@�2         b       ^       U       W       3        
   
    ,�.      "@�2         c       _       V       X       �        
   
    ,�.      "@�2         X       `       W       Y       g     	   
   
    ,�.      "@�2      	   Y       a       X       Y         	       
   
    ,�.      $@�2   	       Z       Z       Z       [       �  	      
   
    ,�.      $@�2   	      [       [       Z       \       5  	      
   
    ,�.      $@�2   	      \       \       [       ]       �  	      
   
    ,�.      $@�2   	      ]       ]       \       ^       i  	      
   
    ,�.      $@�2   	      ^       ^       ]       _         	      
   
    ,�.      $@�2   	      _       _       ^       `       �  	      
   
    ,�.      $@�2   	      `       `       _       a       7  	      
   
    ,�.      $@�2   	      a       a       `       b       �   	      
   
    ,�.      $@�2   	      b       b       a       c       k   	   	   
   
    ,�.      $@�2   	   	   c       c       b       c          #         � �  �)  �)  w)  n)  #)  )  )  )  �(  �(  �(  �(  W(  N(  E(  <(  �'  �'  �'  �'  �'  �'  y'  p'  %'  '  '  
'  �&  �&  �&  �&  Y&  P&  G&  >&  �%  �%  �%  �%  �%  �%  {%  r%  '%  %  %  %  �$  �$  �$  �$  [$  R$  I$  @$  �#  �#  �#  �#  �#  �#  }#  t#  )#   #  #  #  �"  �"  �"  �"  ]"  T"  K"  B"  �!  �!  �!  �!  �!  �!  !  v!  +!  "!  !  !  �   �   �   �   _   V   M   D   �  �  �  �  �  �  �  x  -  $      �  �  �  �  a  X  O  F  �  �  �  �  �  �  �  z  /  &      �  �  �  �  c  Z  Q  H  �  �  �  �  �  �  �  |  1  (      �  �  �  �  e  \  S  J  �  �  �  �  �  �  �  ~  3  *  !    �  �  �  �  g  ^  U  L    �  �  �  �  �  �  �  5  ,  #    �  �  �  �  i  `  W  N    �  �  �  �  �  �  �  7  .  %    �  �  �  �  k  b  Y  P    �  �  �  �  �  �  �  9  0  '    �  �  �  �  m  d  [  R    �  �  �  �  �  �  �  ;  2  )     �  �  �  �  o  f  ]  T  	     �  �  �  �  �  �  =  4  +  "  �  �  �  �  q  h  _  V      �  �  �  �  �  �  ?  6  -  $  �  �  �  �  s  j  a  X      �  �  �  �  �  �  A  8  /  &  �
  �
  �
  �
  u
  l
  c
  Z
  
  
  �	  �	  �	  �	  �	  �	  C	  :	  1	  (	  �  �  �  �  w  n  e  \      �  �  �  �  �  �  E  <  3  *  �  �  �  �  y  p  g  ^    
    �  �  �  �  �  G  >  5  ,  �  �  �  �  {  r  i  `        �  �  �  �  �  I  @  7  .  �  �  �  �  }  t  k  b        �      e                  _    <              6    " 78`   @%   " �@%   w� �        e                  _    <              6    " 78`   @%   " �@%   w� �        �                  R               <    ""  j5`   @g   w� �            /                   � �        E                  ?               )    	   @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        