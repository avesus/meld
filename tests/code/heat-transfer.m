meld fil    
   d       c      b      Y      a      X      O      `      W      N   	   E   
   _      V      M      D      ;      ^      U      L      C      :      1      ]      T      K      B      9      0      '      \      S      J      A       8   !   /   "   &   #      $   [   %   R   &   I   '   @   (   7   )   .   *   %   +      ,      -   Z   .   Q   /   H   0   ?   1   6   2   -   3   $   4      5      6   	   7   P   8   G   9   >   :   5   ;   ,   <   #   =      >      ?      @   F   A   =   B   4   C   +   D   "   E      F      G      H   <   I   3   J   *   K   !   L      M      N      O   2   P   )   Q       R      S      T      U   (   V      W      X      Y      Z      [      \      ]      ^      _      `      a   
   b      c       	                init -o axioms*   !edge(X1, X2) -o !___egde(host-id, X2)@X1.]   neighborchanged(B, V, O), delta(P1, P2), !___egde(B, W) -o delta(P1 + (V * W), P2 + (O * W)).�   heatchanged(O, X), !heat(V), !inbound(T), fabs(X) > 7.5 -o 
			{B, W | !edge(B, W) | add-priority(fabs(X) / 7.5)@B, neighborchanged(host-id, V / float(T), O / float(T))@B}.~   heatchanged(O, X), !heat(V), !inbound(T) -o {B, W | 
			!edge(B, W) | neighborchanged(host-id, V / float(T), O / float(T))@B}.�   delta(Plus, Minus), heat(V), count(C), !inbound(X), 
			fabs((Plus - Minus)) > 0.1 -o heatchanged(V, Plus - Minus), heat((V + Plus) - Minus), count(C + 1), delta(0.0, 0.0).          0    ����?    0       @   �   <   �  !
        `   �  	      �? !!`   �  	      � 0	
!          _init                                                               set-priority                                                        setcolor                                                             setedgelabel                                                         write-string                                                        add-priority                                                         schedule-next                                                       setColor2                                                            inbound                                                              edge                                                                 coord                                                                 inner                                                               heat                                                                heatchanged                                                         neighborchanged                                                     delta                                                               count                                                                ___egde                                                                  �                    ;!      �  5!   �
�   d      <   �  �   �  �  �   T  7  '	    �  �  o	  _  \  �  �  �	  �  �  �  S  6  
  �  �  �  �  �  �  n
  Q  6      4  �  �  �
  �  �  p  S  C  |  R  5    �  �  �  �  �  {  �  �  m  R  6    �  �  �  �  �  �  �  o  R  5  �    �  �  �  �  �  F  Q  6    �  �  �  �  n  Q  4  �  �  �  �    �  �  f  3  �  �  6   	      ����?	      ����?      @
	   	      �  C   	       ����?	      ����?	      ����?      @
	         �  C   	      ����?	      ����?	      ����?      @
	         j  C   	      ����?	
      ����?	      ����?      @
	         "  C   	      ����?	      ����?	      ����?      @
	         �  C   	
      ����?	      ����?	      ����?      @
	         �  C   	      ����?	      ����?	      ����?      @
	         J  C   	      ����?	$      ����?	%      ����?      @
	           C   	      ����?	-      ����?	.      ����?      @
	         �  6   	$      ����?	7      ����?      @
	            C   	       ����?	      ����?	      ����?      @
   	      7  P   	      ����?	      ����?	      ����?	      ����?      @
         �  P   	      ����?	      ����?	      ����?	      ����?      @
         �  P   	      ����?	      ����?	      ����?	      ����?      @
         8  P   	      ����?	
      ����?	      ����?	      ����?      @
         �  P   	      ����?	      ����?	      ����?	      ����?      @
         �  P   	      ����?	      ����?	%      ����?	&      ����?      @
         9  P   	      ����?	      ����?	.      ����?	/      ����?      @
         �  P   	%      ����?	$      ����?	7      ����?	8      ����?      @
         �  C   	.      ����?	-      ����?	@      ����?      @
          G  C   	      ����?	      ����?		      ����?      @
   	      �  P   	      ����?	      ����?	      ����?	      ����?      @
         �  P   	      ����?	      ����?	      ����?	      ����?      @
         U  P   	      ����?	      ����?	      ����?	      ����?      @
            P   	      ����?	      ����?	      ����?	      ����?      @
         �  P   	      ����?	      ����?	&      ����?	'      ����?      @
         V  P   	      ����?	      ����?	/      ����?	0      ����?      @
           P   	&      ����?	%      ����?	8      ����?	9      ����?      @
         �  P   	/      ����?	.      ����?	@      ����?	A      ����?      @
         W  C   	8      ����?	7      ����?	H      ����?      @
            C   	      ����?	      ����?	      ����?      @
   	      �  P   		      ����?	      ����?	      ����?	      ����?      @
         r  P   	      ����?	      ����?	      ����?	      ����?      @
           P   	      ����?	      ����?	      ����?	       ����?      @
         �  P   	      ����?	      ����?	'      ����?	(         �?      @
         s  P   	      ����?	      ����?	0      ����?	1         �?      @
           P   	'      ����?	&      ����?	9      ����?	:      ����?      @
         �  P   	0      ����?	/      ����?	A      ����?	B      ����?      @
         t  P   	9      ����?	8      ����?	H      ����?	I      ����?      @
           C   	A      ����?	@      ����?	O      ����?      @
          �  C   		      ����?	      ����?	      ����?      @
   	      �  P   	      ����?	      ����?	      ����?	      ����?      @
         :  P   	      ����?	      ����?	       ����?	!      ����?      @
         �  P   	      ����?	      ����?	(         �?	)      ����?      @
         �  Q   	          �?	         �?	1         �?	2         �?      Y@
         :  Q   	(         �?	'         �?	:         �?	;         �?      Y@
         �  P   	1         �?	0      ����?	B      ����?	C      ����?      @
         �  P   	:      ����?	9      ����?	I      ����?	J      ����?      @
         :  P   	B      ����?	A      ����?	O      ����?	P      ����?      @
         �  C   	I      ����?	H      ����?	U      ����?      @
          �  C   	      ����?	      ����?	      ����?      @
   	      U  P   	      ����?	      ����?	!      ����?	"      ����?      @
            P   	      ����?	      ����?	)      ����?	*      ����?      @
         �  P   	!      ����?	       ����?	2         �?	3      ����?      @
         V  Q   	)         �?	(         �?	;         �?	<         �?      Y@
            Q   	2         �?	1         �?	C         �?	D         �?      Y@
         �  P   	;         �?	:      ����?	J      ����?	K      ����?      @
         U  P   	C      ����?	B      ����?	P      ����?	Q      ����?      @
            P   	J      ����?	I      ����?	U      ����?	V      ����?      @
         �  C   	P      ����?	O      ����?	Z      ����?      @
          c  C   	      ����?	"      ����?	#      ����?      @
   	        P   	      ����?	      ����?	*      ����?	+      ����?      @
         �  P   	"      ����?	!      ����?	3      ����?	4      ����?      @
         q  P   	*      ����?	)      ����?	<      ����?	=      ����?      @
           P   	3      ����?	2         �?	D      ����?	E      ����?      @
         �
  P   	<      ����?	;         �?	K      ����?	L      ����?      @
         r
  P   	D      ����?	C      ����?	Q      ����?	R      ����?      @
         
  P   	K      ����?	J      ����?	V      ����?	W      ����?      @
         �	  P   	Q      ����?	P      ����?	Z      ����?	[      ����?      @
         s	  C   	V      ����?	U      ����?	^      ����?      @
          +	  C   	      ����?	+      ����?	,      ����?      @
   	      �  P   	#      ����?	"      ����?	4      ����?	5      ����?      @
         �  P   	+      ����?	*      ����?	=      ����?	>      ����?      @
         9  P   	4      ����?	3      ����?	E      ����?	F      ����?      @
         �  P   	=      ����?	<      ����?	L      ����?	M      ����?      @
         �  P   	E      ����?	D      ����?	R      ����?	S      ����?      @
         :  P   	L      ����?	K      ����?	W      ����?	X      ����?      @
         �  P   	R      ����?	Q      ����?	[      ����?	\      ����?      @
         �  P   	W      ����?	V      ����?	^      ����?	_      ����?      @
         ;  C   	[      ����?	Z      ����?	a      ����?      @
          �  C   	#      ����?	5      ����?	6      ����?      @
   	      �  P   	,      ����?	+      ����?	>      ����?	?      ����?      @
         V  P   	5      ����?	4      ����?	F      ����?	G      ����?      @
           P   	>      ����?	=      ����?	M      ����?	N      ����?      @
         �  P   	F      ����?	E      ����?	S      ����?	T      ����?      @
         W  P   	M      ����?	L      ����?	X      ����?	Y      ����?      @
           P   	S      ����?	R      ����?	\      ����?	]      ����?      @
         �  P   	X      ����?	W      ����?	_      ����?	`      ����?      @
         X  P   	\      ����?	[      ����?	a      ����?	b      ����?      @
           C   	_      ����?	^      ����?	c      ����?      @
          �  6   	,      ����?	?      ����?      @
    	      �  C   	6      ����?	5      ����?	G      ����?      @
          8  C   	?      ����?	>      ����?	N      ����?      @
          �  C   	G      ����?	F      ����?	T      ����?      @
          �  C   	N      ����?	M      ����?	Y      ����?      @
          `  C   	T      ����?	S      ����?	]      ����?      @
            C   	Y      ����?	X      ����?	`      ����?      @
          �   C   	]      ����?	\      ����?	b      ����?      @
          �   C   	`      ����?	_      ����?	c      ����?      @
          @   6   	b      ����?	a      ����?      @
              @ 0           0            @ 0           0            @ 0        0 � 0         �      -      �	  '    �0 @0 0 0"  �     	b      � \    �0 � N    �0!�  @    B  0"@�$ �$  �$ �$�� �     �      � �    �0 0  0
	! 0	! �! "      @`�   �  �    �0!�  ~    �0"l   �	  f    �0#@0  0
	! 0	% �%    0% @0 	% �% 	% �%  0% �� �     u      � o    �0 �  a    �0!�  S    �0"A   �	  ;    �0#@0 	% �% 	% �%  0% �� �     �      � �    �0 �    0
	! 0	! �! "   ����?`�   � �    �0!� �    �0"�  y    �0#@0  �   @�%   �%  @�     @0          0         ��� �     