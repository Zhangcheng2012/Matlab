  ]  X   k820309    �  47D3B   6.6     ��B                                                                                                                        
       C:\My_Documents\internal_metrology\diffraction\2003.10.14 update\Polygons.F90 POLYGONS          ADDVERTEX SHIFTPOLYGON CLEARPOLYGON ROTATEPOLYGON ROTATEPOLYGON_3D POLYGONAREA POLYGONOVERLAP POLYGONORIENTATION MAKEHEXAGON MAKERECTANGLE NUMBEROFVERTICES GETVERTEX POLYGONISCONVEX BOUNDINGRECTANGLE POLYGON NOTCONVEX CLOCKWISE i@|                                         
                                               
                                                     |  #INITIALIZEPOLYGONTOARRAY    #SETPOLYGONEQUALTOPOLYGON 	   #     @     @X                                      #INITIALIZEPOLYGONTOARRAY%ASSOCIATED    #INITIALIZEPOLYGONTOARRAY%SIZE    #POLY    #VERTEXARRAY             @                          ASSOCIATED          @                          SIZE       D  @                           0       #POLYGON          
 @@                                
          &           &                       #     @     @X                   	                  #SETPOLYGONEQUALTOPOLYGON%ASSOCIATED 
   #POLY    #POLY2             @                     
     ASSOCIATED       D  @                           0       #POLYGON          
   @                           0      #POLYGON    #     @                                           #ADDVERTEX%MAX    #ADDVERTEX%ASSOCIATED    #POLY    #NEWVERTEX             @                          MAX          @                          ASSOCIATED       
D  @                           0       #POLYGON          
   @                                
    p      p        p              #     @                                           #SHIFTPOLYGON%EPSILON    #SHIFTPOLYGON%ABS    #POLY    #XC    #YC             @                          EPSILON          @                          ABS       
D  @                           0       #POLYGON          
  @@                          
        
  @@                          
  #     @                                           #CLEARPOLYGON%ASSOCIATED    #POLY             @                          ASSOCIATED       
D  @                           0       #POLYGON    #     @                                            #ROTATEPOLYGON%MATMUL    #ROTATEPOLYGON%PRESENT    #ROTATEPOLYGON%EPSILON    #ROTATEPOLYGON%ABS    #POLY     #ANGLE !   #XC "   #YC #                                     @                          MATMUL          @                          PRESENT          @                          EPSILON          @                          ABS       
D @@                            0       #POLYGON          
  @@                     !     
        
 @@                     "     
        
 @@                     #     
  #     @                          $                  #ROTATEPOLYGON_3D%MATMUL %   #ROTATEPOLYGON_3D%EPSILON &   #ROTATEPOLYGON_3D%ABS '   #POLY (   #ANGLE )   #AXIS *                                        @                     %     MATMUL          @                     &     EPSILON          @                     '     ABS       
D  @                      (     0       #POLYGON          
  @@                     )     
        
  @@                     *           
    p      p        p              %     @                        +                   
   #POLY ,         
   @                      ,     0      #POLYGON    &     @                        -    0                 #POLYGONOVERLAP%DOT_PRODUCT .   #POLYGONOVERLAP%EPSILON /   #POLYGONOVERLAP%ABS 0   #POLYGONA 1   #POLYGONB 2   #POLYGON             @                     .     DOT_PRODUCT          @                     /     EPSILON          @                     0     ABS       
  @@                      1     0      #POLYGON          
  @@                      2     0      #POLYGON    %     @                       3                      #POLY 4         
   @                      4     0      #POLYGON    &     @                        5    0                 #MAKEHEXAGON%MATMUL 6   #MAKEHEXAGON%PRESENT 7   #MAKEHEXAGON%ASSOCIATED 8   #SIDE 9   #ANGLE :   #XC ;   #YC <   #POLYGON                                    @                     6     MATMUL          @                     7     PRESENT          @                     8     ASSOCIATED       
   @                     9     
        
 @@                     :     
        
 @@                     ;     
        
 @@                     <     
  &     @                        =    0                 #MAKERECTANGLE%MATMUL >   #MAKERECTANGLE%PRESENT ?   #MAKERECTANGLE%ASSOCIATED @   #LENGTH A   #WIDTH B   #ANGLE C   #XC D   #YC E   #POLYGON                                      @                     >     MATMUL          @                     ?     PRESENT          @                     @     ASSOCIATED       
   @                     A     
        
   @                     B     
        
 @@                     C     
        
 @@                     D     
        
 @@                     E     
  %     @                       F                      #INPUTPOLYGON G         
   @                      G     0      #POLYGON    (     `                       H                          
#N I   #INPUTPOLYGON J   p      p        p                    
   @                      I             
   @                      J     0      #POLYGON    %     @                        K                     #POLYGONISCONVEX%ASSOCIATED L   #INPUTPOLYGON M            @                     L     ASSOCIATED       
  @@                      M     0      #POLYGON    (     `                        N                         
#BOUNDINGRECTANGLE%MAXVAL O   #BOUNDINGRECTANGLE%MINVAL P   #POLY Q   p      p      p        p      p                                                    @                     O     MAXVAL          @                     P     MINVAL       
   @                      Q     0      #POLYGON               �  @                       '0            #NUMVERTICES R   #VERTEX S           � d                      R                                                                 0       �d                    S                
        &           &                                         y
                                                                    T                                       0                                 U                          ��������           �   _      fn#fn      �   b   uapp(POLYGONS    �  4   J  KINDS    /  4   J  ERROR_EXIT    c  p      i@| )   �  �      INITIALIZEPOLYGONTOARRAY 4   v  7      INITIALIZEPOLYGONTOARRAY%ASSOCIATED .   �  1      INITIALIZEPOLYGONTOARRAY%SIZE .   �  A   a   INITIALIZEPOLYGONTOARRAY%POLY 5     p   a   INITIALIZEPOLYGONTOARRAY%VERTEXARRAY )   �  z      SETPOLYGONEQUALTOPOLYGON 4   	  7      SETPOLYGONEQUALTOPOLYGON%ASSOCIATED .   @  A   a   SETPOLYGONEQUALTOPOLYGON%POLY /   �  A   a   SETPOLYGONEQUALTOPOLYGON%POLY2    �  �       ADDVERTEX    D  0      ADDVERTEX%MAX %   t  7      ADDVERTEX%ASSOCIATED    �  A   a   ADDVERTEX%POLY $   �  l   a   ADDVERTEX%NEWVERTEX    X  �       SHIFTPOLYGON %   �  4      SHIFTPOLYGON%EPSILON !     0      SHIFTPOLYGON%ABS "   B  A   a   SHIFTPOLYGON%POLY     �  0   a   SHIFTPOLYGON%XC     �  0   a   SHIFTPOLYGON%YC    �  c       CLEARPOLYGON (   F	  7      CLEARPOLYGON%ASSOCIATED "   }	  A   a   CLEARPOLYGON%POLY    �	  �       ROTATEPOLYGON %   �
  3      ROTATEPOLYGON%MATMUL &   �
  4      ROTATEPOLYGON%PRESENT &     4      ROTATEPOLYGON%EPSILON "   :  0      ROTATEPOLYGON%ABS #   j  A   a   ROTATEPOLYGON%POLY $   �  0   a   ROTATEPOLYGON%ANGLE !   �  0   a   ROTATEPOLYGON%XC !     0   a   ROTATEPOLYGON%YC !   ;  �       ROTATEPOLYGON_3D (     3      ROTATEPOLYGON_3D%MATMUL )   :  4      ROTATEPOLYGON_3D%EPSILON %   n  0      ROTATEPOLYGON_3D%ABS &   �  A   a   ROTATEPOLYGON_3D%POLY '   �  0   a   ROTATEPOLYGON_3D%ANGLE &     l   a   ROTATEPOLYGON_3D%AXIS    {  J       POLYGONAREA !   �  A   a   POLYGONAREA%POLY      �       POLYGONOVERLAP +   �  8      POLYGONOVERLAP%DOT_PRODUCT '   �  4      POLYGONOVERLAP%EPSILON #   /  0      POLYGONOVERLAP%ABS (   _  A   a   POLYGONOVERLAP%POLYGONA (   �  A   a   POLYGONOVERLAP%POLYGONB #   �  J       POLYGONORIENTATION (   +  A   a   POLYGONORIENTATION%POLY    l  �       MAKEHEXAGON #   B  3      MAKEHEXAGON%MATMUL $   u  4      MAKEHEXAGON%PRESENT '   �  7      MAKEHEXAGON%ASSOCIATED !   �  0   a   MAKEHEXAGON%SIDE "     0   a   MAKEHEXAGON%ANGLE    @  0   a   MAKEHEXAGON%XC    p  0   a   MAKEHEXAGON%YC    �  �       MAKERECTANGLE %   �  3      MAKERECTANGLE%MATMUL &   �  4      MAKERECTANGLE%PRESENT )   �  7      MAKERECTANGLE%ASSOCIATED %   )  0   a   MAKERECTANGLE%LENGTH $   Y  0   a   MAKERECTANGLE%WIDTH $   �  0   a   MAKERECTANGLE%ANGLE !   �  0   a   MAKERECTANGLE%XC !   �  0   a   MAKERECTANGLE%YC !     R       NUMBEROFVERTICES .   k  A   a   NUMBEROFVERTICES%INPUTPOLYGON    �  �       GETVERTEX    =  0   a   GETVERTEX%N '   m  A   a   GETVERTEX%INPUTPOLYGON     �  r       POLYGONISCONVEX +      7      POLYGONISCONVEX%ASSOCIATED -   W  A   a   POLYGONISCONVEX%INPUTPOLYGON "   �  �       BOUNDINGRECTANGLE )   �  3      BOUNDINGRECTANGLE%MAXVAL )   �  3      BOUNDINGRECTANGLE%MINVAL '   �  A   a   BOUNDINGRECTANGLE%POLY    2  Y       POLYGON $   �  u   !   POLYGON%NUMVERTICES       �   !   POLYGON%VERTEX    �  U       NOTCONVEX    	  T       CLOCKWISE 