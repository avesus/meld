meld fil       d   c       c       b       b       a       a       `       `       _       _       ^       ^       ]       ]       \       \       [       [       Z       Z       Y       Y       X       X       W       W       V       V       U       U       T       T       S       S       R       R       Q       Q       P       P       O       O       N       N       M       M       L       L       K       K       J       J       I       I       H       H       G       G       F       F       E       E       D       D       C       C       B       B       A       A       @       @       ?       ?       >       >       =       =       <       <       ;       ;       :       :       9       9       8       8       7       7       6       6       5       5       4       4       3       3       2       2       1       1       0       0       /       /       .       .       -       -       ,       ,       +       +       *       *       )       )       (       (       '       '       &       &       %       %       $       $       #       #       "       "       !       !                                                                                                                                                                                                             	       	                                                                                                                                                                                                                                       
       
                       	                init -o axiomsZ  start() -o belief(cons(-1.60944,cons(-1.60944,cons(-1.60944,cons(-1.60944,cons(-1.60944,nil)))))), update(), {B, Side | 
			!edge(B, Side) | neighbor-belief(B, cons(-1.60944,cons(-1.60944,cons(-1.60944,cons(-1.60944,cons(-1.60944,nil)))))), sent-neighbor-belief(B, cons(-1.60944,cons(-1.60944,cons(-1.60944,cons(-1.60944,cons(-1.60944,nil))))))}.   !update(), update() -o 1.j   neighbor-belief(B, Belief), new-neighbor-belief(MV4, NewBelief), MV4 = B -o neighbor-belief(B, NewBelief).�   copy-messages(), !potential(Potential), belief(MyBelief) -o sum-messages(Potential), 
			{B, Belief | neighbor-belief(B, Belief) | neighbor-belief-old(B, Belief), neighbor-belief-copy(Belief), 
			neighbor-belief(B, Belief)}.R   sum-messages(L1), neighbor-belief-copy(L2) -o sum-messages(addfloatlists(L1, L2)).n   sum-messages(NewBelief), Normalized = normalize(NewBelief) -o update-messages(Normalized), belief(Normalized).�   check-residual(MV9, MV10, MV11), !edge(MV12, MV13), MV12 = MV9 -o (MV10 > 1.e-4 -o update()@MV9, new-neighbor-belief(host-id, MV11)@MV9), 
			OR ( -o new-neighbor-belief(host-id, MV11)@MV9).U  !update-messages(NewBelief), !edge(B, MV3), neighbor-belief-old(MV7, OldIn), sent-neighbor-belief(MV8, OldOut), 
			Cavity = normalize(divide(NewBelief, OldIn)), Convolved = normalize(convolve(cons(-0.0,cons(-2.0,cons(-4,cons(-6,cons(-8,cons(-2,cons(0,cons(-2,cons(-4,cons(-6,cons(-4,cons(-2,cons(0,cons(-2,cons(-4,cons(-6,cons(-4,cons(-2,cons(0,cons(-2,cons(-8,cons(-6,cons(-4,cons(-2,cons(0,nil))))))))))))))))))))))))), Cavity)), OutMessage = damp(Convolved, OldOut, 0.1), MV7 = B, MV8 = B -o 
			check-residual(B, residual(OutMessage, OldOut), OutMessage), sent-neighbor-belief(B, OutMessage).    update-messages(NewBelief) -o 1.   update() -o copy-messages().         �  $ .        _   .       �_   .      �_   .      �_   .       �_   .       �_   .        _   .       �_   .      �_   .      �_   .      �_   .       �_   .        _   .       �_   .      �_   .      �_   .      �_   .       �_   .        _   .       �_   .       �_   .      �_   .      �_   .       �_   .        _   )     $ .    D���_   .    D���_   .    D���_   .    D���_   .    D���_   )    �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setColor2                                                            edge                                                                  potential                                                            pixel                                                                belief                                                               new-neighbor-belief                                                  sent-neighbor-belief                                                 neighbor-belief                                                      neighbor-belief-copy                                                 neighbor-belief-old                                                  start                                                                update                                                               copy-messages                                                        sum-messages                                                         update-messages                                                      check-residual                                                           �                                                                                                                     �;                   ~;   � 
U;  d      �     �  $  �  <  �  T  �  _  �  �    �  O  �  �	  
  �
  ?  �  d  �  �  /  �  a  �  �    �  D  �  v    �  A  �  s  �  �  $  �  V  �  �  !  �  S  �  k    �  6  �  h   !  �!  3"  �"  K#  �#  }$  %  �%  H&  �&  z'  (  �(  +)  �)  ]*  �*  �+  (,  �,  Z-  �-  .  /  �/  =0  �0  o1  2  �2  :3  �3  _4  �4  j5  �5  �6  7  �7  &8  �8  >9  @	 $.   �ט�_ .   �����_ .   �z���_ .   `e_��_ .   �E��d  x (             
          
        B9  @	 $.   ���_ .   `���_ .    �]�_ .    
�
�_ .    1�d  x 5                                  
       �8  @	 $.    j�޿_ .   �@<��_ .   �Td�_ .   @�*�_ .   `\x�d  x 5                                 
       *8  @	 $.   ����_ .    p��_ .   �9i��_ .   ��� �_ .   �f��d  x 5                                 
       �7  @	 $.    ���_ .   �����_ .    �f�_ .   @}�_ .    �I�d  x 5                                 
       7  @	 $.   @@0��_ .    ����_ .   ��s��_ .   �"��_ .   �\��d  x 5                                 
       �6  @	 $.   ����_ .   ���_ .   @�H��_ .    ���_ .   `;��d  x 5                                 
       �5  @	 $.   `V���_ .   @To��_ .   �GD��_ .   �E��_ .   �!� �d  x 5                                 
       n5  @	 $.   �P��_ .   @����_ .   �4c��_ .   �} ��_ .    ǝ��d  x 5   	                              
       �4  @	 $.   ���_ .   �$���_ .    �j�_ .    #��_ .   `�N�d  x (                       
    	   c4  @	 $.    \,�_ .   ���_ .   �����_ .   �*u�_ .   ��m�d  x 5                                   
       �3  @	 $.   �+���_ .    ��_ .     c��_ .   �����_ .   �o��d  x B             
                               
      >3  @	 $.    �G�_ .   � $�_ .   `s ��_ .   �]n�_ .    ��	�d  x B                                            
      �2  @	 $.   �t��_ .   �p��_ .   `ws��_ .   �9� �_ .    ��d  x B                                            
      2  @	 $.   �`� �_ .   ���_ .    LC��_ .   ��s��_ .   ����d  x B                                            
      s1  @	 $.   `.b�_ .   ��'�_ .   �=���_ .    eY�_ .   �+�	�d  x B                                            
      �0  @	 $.    �F�_ .    F%�_ .   �G'��_ .   औ�_ .   ��
�d  x B                                            
      A0  @	 $.    2��_ .   @�;�_ .   �>���_ .   `b��_ .   �%	�d  x B                                            
      �/  @	 $.   ����_ .    A���_ .    f=��_ .   �����_ .   ��� �d  x B                                            
      /  @	 $.   ��w�_ .   �L!�_ .   ����_ .    v�_ .   `���d  x 5                       	           
   	   �.  @	 $.   `���_ .   @�Y�_ .   �P%��_ .    Wx�_ .    ^�d  x 5                       
           
       �-  @	 $.   �&N�_ .   ��$�_ .   �����_ .    Ti�_ .    ��	�d  x B                                            
      ^-  @	 $.    ���_ .    /��_ .    �_ �_ .   `w��_ .    ���d  x B                                             
      �,  @	 $.    ���_ .   `�d �_ .   ��A��_ .   `��_ .   ��1�d  x B                       !                     
      ,,  @	 $.   `��_ .   �a���_ .   `����_ .    ���_ .    ;��d  x B                       "                     
      �+  @	 $.   ��_ .   �����_ .   `����_ .   �@<��_ .    ����d  x B                       #                     
      �*  @	 $.    p�_ .   `^ �_ .   �u��_ .   ����_ .   `*��d  x B                       $                     
      a*  @	 $.    #a�_ .   `\8 �_ .   �+��_ .   ����_ .   `|�d  x B                       %                     
      �)  @	 $.   ����_ .   `����_ .   �u��_ .    L���_ .   �"2��d  x B                       &                     
      /)  @	 $.   @�R��_ .   ����_ .   �=3��_ .    n���_ .   `ω �d  x 5             '                     
   	   �(  @	 $.    v���_ .   @����_ .   �R���_ .   @����_ .   �}�d  x 5             (                     
       (  @	 $.   @�_ .   `���_ .   `LO��_ .   ��u �_ .   @=��d  x B                        )                     
      ~'  @	 $.   �C���_ .   �"���_ .    �;��_ .    ����_ .   `�� �d  x B   !                    *                     
      �&  @	 $.   ��
��_ .   ��Y��_ .   �m���_ .    <���_ .   �
��d  x B   "                     +                     
      L&  @	 $.   �3��_ .   `����_ .   �!���_ .   �t��_ .   ����d  x B   #          !          ,                     
      �%  @	 $.   `��_ .   �� �_ .   �����_ .   ���_ .   �C�d  x B   $          "          -                     
      %  @	 $.    �M�_ .   �n�_ .    ���_ .   ��\�_ .   �)��d  x B   %          #          .                     
      �$  @	 $.    �P�_ .    ����_ .   �h���_ .   �A���_ .   ����d  x B   &          $          /                     
      �#  @	 $.   @%�_ .   �!+�_ .   ��T��_ .   �#��_ .   ��)�d  x B   '          %          0                     
      O#  @	 $.   `VZ�_ .   `H���_ .    �=��_ .    ����_ .   �%���d  x 5   &          1                     
   	   �"  @	 $.   @���_ .    ��_ .   �x���_ .   ��Z�_ .   �S��d  x 5   )          2                     
       7"  @	 $.   `���_ .   ��8�_ .   �����_ .   @J�_ .    �3	�d  x B   *          (          3                     
      �!  @	 $.   �"� �_ .    � ��_ .   `�E��_ .   � j��_ .   ྎ��d  x B   +          )          4                      
      !  @	 $.    �Q�_ .   @���_ .   �f���_ .   @33�_ .   ���d  x B   ,          *          5          !           
      l   @	 $.   �u��_ .   �ZS��_ .    �	��_ .    /���_ .   ��v��d  x B   -          +          6          "           
      �  @	 $.   ��	�_ .   ����_ .    ����_ .   `�<�_ .   ����d  x B   .          ,          7          #           
      :  @	 $.   ��D �_ .   @�Y��_ .   @o*��_ .   @����_ .   `S���d  x B   /          -          8          $           
      �  @	 $.    ��_ .   �o� �_ .   �dp��_ .   @��_ .    z��d  x B   0          .          9          %           
        @	 $.   @���_ .    +��_ .    ���_ .   �����_ .   �����d  x B   1          /          :          &           
      o  @	 $.    �`�_ .    2l�_ .    ����_ .    ��_ .    b<�d  x 5   0          ;          '           
   	   �  @	 $.    �J��_ .   �H���_ .   ��3��_ .   �w���_ .   @�� �d  x 5   3          <          (           
       W  @	 $.   @�p
�_ .   `���_ .   @�Y��_ .   ���_ .   ����d  x B   4          2          =          )           
      �  @	 $.   `y��_ .   �m��_ .   @���_ .   ��P��_ .    j��d  x B   5          3          >          *           
      %  @	 $.   @���_ .   ��r�_ .    A���_ .   �`��_ .   ���d  x B   6          4          ?          +           
      �  @	 $.   �A���_ .   �[=��_ .   @����_ .   @�1��_ .   `���d  x B   7          5          @          ,           
      �  @	 $.    k�_ .    5���_ .    fZ��_ .    ���_ .   �����d  x B   8          6          A          -           
      Z  @	 $.    �_ .   `I@�_ .   ����_ .   ��	�_ .   �6��d  x B   9          7          B          .           
      �  @	 $.   �R�_ .   @��	�_ .   @�� �_ .   ����_ .    !��d  x B   :          8          C          /           
      (  @	 $.    pk��_ .   �+���_ .    ���_ .   ��]��_ .    /��d  x B   ;          9          D          0           
      �  @	 $.   �t�_ .   ��x�_ .    t���_ .   ��_ .   `��d  x 5   :          E          1           
   	     @	 $.   ��h �_ .   �>���_ .   @�.��_ .   �c���_ .   �����d  x 5   =          F          2           
       w  @	 $.   `j��_ .    �r
�_ .    (8�_ .   ����_ .   ���d  x B   >          <          G          3           
      �  @	 $.   ����_ .   �i��_ .   �^��_ .    ����_ .   `��d  x B   ?          =          H          4           
      E  @	 $.   ��y��_ .   ��`��_ .    �G��_ .   @�.��_ .   ��
�d  x B   @          >          I          5           
      �  @	 $.   @��
�_ .   ��+�_ .   �e���_ .   ���_ .   �3��d  x B   A          ?          J          6           
        @	 $.    ��_ .   ��� �_ .   �b���_ .    0��_ .   ��H�d  x B   B          @          K          7           
      z  @	 $.   �\A�_ .    Aq�_ .   @�_�_ .    ����_ .   `w��d  x B   C          A          L          8           
      �  @	 $.   `��_ .    7���_ .   �H���_ .   �d��_ .   �v��d  x B   D          B          M          9           
      H  @	 $.   ���_ .   ���_ .   �����_ .   �[�_ .    �X�d  x B   E          C          N          :           
      �  @	 $.    "�_ .   �E�_ .   ��E�_ .   @����_ .   `��d  x 5   D          O          ;           
   	   #  @	 $.   ���
�_ .    ���_ .    jj��_ .    ��_ .   ��y�d  x 5   G          P          <           
       �  @	 $.   `SK�_ .    ql�_ .    ��_ .   �N]�_ .   ���d  x B   H          F          Q          =           
      �  @	 $.    �_ .   �� �_ .   �����_ .   `���_ .   `�]�d  x B   I          G          R          >           
      e  @	 $.   ��	�_ .   �?��_ .   �ă��_ .   �	?�_ .   �N��d  x B   J          H          S          ?           
      �  @	 $.    ���_ .   ����_ .   �L��_ .   `s �_ .    �i��d  x B   K          I          T          @           
      3  @	 $.    �a��_ .   @���_ .    ���_ .   �[���_ .   @��d  x B   L          J          U          A           
      �  @	 $.   �'F�_ .   �7�_ .   ���_ .   `*��_ .   ��_�d  x B   M          K          V          B           
        @	 $.   �{x�_ .   �����_ .   �M���_ .   `�q��_ .   ��G��d  x B   N          L          W          C           
      h  @	 $.    ��_ .   ��y�_ .   �~��_ .   �N���_ .   ���߿d  x B   O          M          X          D           
      �  @	 $.   �y�_ .   ����_ .   ��`��_ .    ��_ .   ��}�d  x 5   N          Y          E           
   	   C  @	 $.   ��<�_ .    $��_ .   `('��_ .    ��_ .    ��d  x 5   Q          Z          F           
       �
  @	 $.   `��	�_ .    s�_ .   ���_ .   @Y#�_ .    B�d  x B   R          P          [          G           
      
  @	 $.    �N�_ .   `�� �_ .   @���_ .   �Ր�_ .    ���d  x B   S          Q          \          H           
      �	  @	 $.   �-��_ .    5�_ .   �г��_ .   ����_ .    ���d  x B   T          R          ]          I           
      �  @	 $.   `
]�_ .    �i�_ .    3���_ .    ��_ .   ��@�d  x B   U          S          ^          J           
      S  @	 $.   ��� �_ .    2���_ .    u<��_ .   ���_ .   ����d  x B   V          T          _          K           
      �  @	 $.    �h��_ .   ����_ .   `I��_ .   `�w��_ .    ����d  x B   W          U          `          L           
      !  @	 $.   `��_ .    �N�_ .   ����_ .    �e�_ .   ����d  x B   X          V          a          M           
      �  @	 $.   ����_ .   ���_ .   �J��_ .   `��_ .   ���ۿd  x B   Y          W          b          N           
      �  @	 $.   ���_ .   ����_ .   `�i��_ .   @C��_ .    *��d  x 5   X          c          O           
   	   c  @	 $.   �zN��_ .   @�8��_ .   `�"��_ .   ���_ .    <���d  x (   [          P           
	       �  @	 $.   �Nc�_ .   ���	�_ .   ��� �_ .    ��_ .   @#��d  x 5   \          Z          Q           
	      X  @	 $.   � � �_ .    ����_ .    �3��_ .   �c���_ .   � M��d  x 5   ]          [          R           
	      �  @	 $.    P��_ .   @�
�_ .   @���_ .    �4�_ .   ���d  x 5   ^          \          S           
	      @  @	 $.   @ ��_ .   ����_ .   �A}��_ .   ��@�_ .    8�d  x 5   _          ]          T           
	      �  @	 $.    w�ؿ_ .    ����_ .   �[��_ .   ��_ .   ��5�d  x 5   `          ^          U           
	      (  @	 $.    �L�_ .    -���_ .   �W���_ .    ����_ .    ��d  x 5   a          _          V           
	      �  @	 $.    t���_ .   � ��_ .   @�!��_ .   �kC��_ .   `e��d  x 5   b          `          W           
	        @	 $.   @#��_ .   `,7�_ .   `5���_ .   ���_ .    )?	�d  x 5   c          a          X           
	      �   @	 $.   ����_ .   `�]��_ .   ���_ .   �����_ .    V���d  x (   b          Y           
	   	      @ w #         � h  W;  J;  �:  �:  �:  L:  ?:  2:  �9  �9  �9  49  '9  9  �8  �8  �8  8  8  8  �7  �7  v7  7  �6  �6  x6  k6  �5  �5  �5  m5  `5  S5  F5  �4  �4  �4  �4  ;4  .4  !4  4  �3  �3  �3  {3  	3  �2  �2  �2  p2  c2  V2  I2  �1  �1  �1  �1  >1  11  $1  1  �0  �0  �0  0  0  �/  �/  �/  s/  f/  �.  �.  �.  �.  [.  N.  A.  4.  �-  �-  �-  �-  )-  -  -  -  �,  �,  v,  i,  �+  �+  �+  �+  ^+  Q+  D+  7+  �*  �*  �*  9*  ,*  *  �)  �)  �)  �)  )  )  �(  �(  {(  n(  a(  T(  �'  �'  �'  �'  I'  <'  /'  "'  �&  �&  �&  �&  &  
&  �%  �%  ~%  q%  d%  W%  �$  �$  �$  Y$  L$  ?$  �#  �#  �#  �#  4#  '#  #  #  �"  �"  �"  t"  "  �!  �!  �!  i!  \!  O!  B!  �   �   �   �   7   *         �  �  �  w    �  �  y  l  _  �  �  �  �  T  G  :  -  �  �  �  �  "      �  �  |  o  b  �  �  �  �  W  J  =  0  �  �  �  �  %      �  �         �  �  t  g  Z  M  �  �  �  �  B  5  (    �  �  �  �      �  �  w  j  ]  P  �  �  �  �  E  8  +  �  �  �  -         �  �  z  m  �  �  �  �  b  U  H  ;  �  �  �  �  0  #    	  �  �  }  p  �  �  �  �  e  X  K  �  �  �  M  @  3  &  �  �  �  �        �
  �
  u
  h
  [
  �	  �	  �	  �	  P	  C	  6	  )	  �  �  �  �        �  �  x  k  �  �  z  m  `  �  �  �  b  U  H  �  �  �  J  =  0  �  �  �  2  %    �  �  �           �                  �    @$.    D���_ .    D���_ .    D���_ .    D���_ .    D���d w@w?              9    @!  +   w@!  +   w�� �         5                  /                   ��         @                  :                $      % { ��         �                  �            	   �               l    @%  wG              A    @!  %w@% w@!  %z���� �         	H                  B               ,    "  " j'  { ��         <                  6    "  iP@' w@' w� �         �                  |                f      " .   ��6?N`%   @"  @( % "  � �@( % "  � �         �                  �               �                �                 �     "  "jiP^    jiP"
.   ����?k
P	@
!  
"j	&
'	
w
!  '	{��            	                   � �         $   
                   @w� �         