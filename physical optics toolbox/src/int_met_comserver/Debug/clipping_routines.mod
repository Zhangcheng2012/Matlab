  �L  �   k820309    �  47D3B   6.6     ��B                                                                                                                        
       C:\My_Documents\internal_metrology\diffraction\2003.10.14 update\Clipping_Routines.f90 CLIPPING_ROUTINES          GAUSSIANCIRCULARAPODIZATION COSINECIRCULARAPODIZATION QUADRATICCIRCULARAPODIZATION SETEDGESMOOTHING GETEDGESMOOTHING RESTOREDEFAULTEDGESMOOTHING WINDOWCLIP gen@CIRCULARCLIP gen@CIRCULAROBSC gen@ELLIPTICALCLIP gen@ELLIPTICALOBSC gen@POLYGONCLIP gen@POLYGONOBSC                                         
                                               
                                                  u #CIRCULARCLIPREAL    #CIRCULARCLIPCMPLX    #     @     @X                                      #CIRCULARCLIPREAL%SIZE    #CIRCULARCLIPREAL%SQRT    #CIRCULARCLIPREAL%PRESENT    #CIRCULARCLIPREAL%REAL    #ARRAY    #X 	   #Y 
   #DIAM    #XC    #YC             @                          SIZE          @                          SQRT          @                          PRESENT           @             @           REAL       
D @@                                
 
          &           &                             
 @@                     	           
          &                             
 @@                     
           
          &                             
  @@                          
        
 @@                          
        
 @@                          
  #     @     @X                                      #CIRCULARCLIPCMPLX%CMPLX    #CIRCULARCLIPCMPLX%AIMAG    #CIRCULARCLIPCMPLX%SIZE    #CIRCULARCLIPCMPLX%SQRT    #CIRCULARCLIPCMPLX%PRESENT    #CIRCULARCLIPCMPLX%REAL    #ARRAY    #X    #Y    #DIAM    #XC    #YC             @                           CMPLX          @                           AIMAG          @                          SIZE          @                          SQRT           @                         PRESENT          @              @           REAL       
D @@                                           &           &                             
 @@                                
          &                             
 @@                                
          &                             
  @@                          
        
 @@                          
        
 @@                          
                                             u #CIRCULAROBSCREAL    #CIRCULAROBSCCMPLX &   #     @     @X                                      #CIRCULAROBSCREAL%SIZE    #CIRCULAROBSCREAL%SQRT    #CIRCULAROBSCREAL%PRESENT    #CIRCULAROBSCREAL%REAL    #ARRAY     #X !   #Y "   #DIAM #   #XC $   #YC %            @                          SIZE          @                          SQRT          @                          PRESENT           @             @           REAL       
D @@                                 
           &           &                             
 @@                     !           
          &                             
 @@                     "           
          &                             
  @@                     #     
        
 @@                     $     
        
 @@                     %     
  #     @     @X                    &                  #CIRCULAROBSCCMPLX%CMPLX '   #CIRCULAROBSCCMPLX%AIMAG (   #CIRCULAROBSCCMPLX%SIZE )   #CIRCULAROBSCCMPLX%SQRT *   #CIRCULAROBSCCMPLX%PRESENT +   #CIRCULAROBSCCMPLX%REAL ,   #ARRAY -   #X .   #Y /   #DIAM 0   #XC 1   #YC 2            @                      '     CMPLX          @                      (     AIMAG          @                     )     SIZE          @                     *     SQRT          @                     +     PRESENT          @              @      ,     REAL       
D @@                     -                      &           &                             
 @@                     .           
          &                             
 @@                     /           
          &                             
  @@                     0     
        
 @@                     1     
        
 @@                     2     
                                             u #ELLIPTICALCLIPREAL 3   #ELLIPTICALCLIPCMPLX B   #     @     @X                    3                  #ELLIPTICALCLIPREAL%SIGN 4   #ELLIPTICALCLIPREAL%MATMUL 5   #ELLIPTICALCLIPREAL%SIZE 6   #ELLIPTICALCLIPREAL%SQRT 7   #ELLIPTICALCLIPREAL%PRESENT 8   #ELLIPTICALCLIPREAL%REAL 9   #ARRAY :   #X ;   #Y <   #MAJORDIAM =   #MINORDIAM >   #ORIENTATION ?   #XC @   #YC A            @                     4     SIGN          @                     5     MATMUL          @                     6     SIZE          @                     7     SQRT          @                     8     PRESENT           @             @      9     REAL       
D @@                     :           
           &           &                             
 @@                     ;           
          &                             
 @@                     <           
          &                             
   @                     =     
        
  @@                     >     
        
   @                     ?     
        
 @@                     @     
        
 @@                     A     
  #     @     @X                    B                  #ELLIPTICALCLIPCMPLX%SIGN C   #ELLIPTICALCLIPCMPLX%MATMUL D   #ELLIPTICALCLIPCMPLX%SIZE E   #ELLIPTICALCLIPCMPLX%SQRT F   #ELLIPTICALCLIPCMPLX%PRESENT G   #ELLIPTICALCLIPCMPLX%REAL H   #ARRAY I   #X J   #Y K   #MAJORDIAM L   #MINORDIAM M   #ORIENTATION N   #XC O   #YC P            @                     C     SIGN          @                     D     MATMUL          @                     E     SIZE          @                     F     SQRT          @                     G     PRESENT           @             @      H     REAL       
D @@                     I                       &           &                             
 @@                     J           
 !         &                             
 @@                     K           
 "         &                             
   @                     L     
        
  @@                     M     
        
   @                     N     
        
 @@                     O     
        
 @@                     P     
                                             u #ELLIPTICALOBSCREAL Q   #ELLIPTICALOBSCCMPLX `   #     @     @X                    Q                  #ELLIPTICALOBSCREAL%SIGN R   #ELLIPTICALOBSCREAL%MATMUL S   #ELLIPTICALOBSCREAL%SIZE T   #ELLIPTICALOBSCREAL%SQRT U   #ELLIPTICALOBSCREAL%PRESENT V   #ELLIPTICALOBSCREAL%REAL W   #ARRAY X   #X Y   #Y Z   #MAJORDIAM [   #MINORDIAM \   #ORIENTATION ]   #XC ^   #YC _            @                     R     SIGN          @                     S     MATMUL          @                     T     SIZE          @                     U     SQRT          @                     V     PRESENT           @             @      W     REAL       
D @@                     X           
 &          &           &                             
 @@                     Y           
 '         &                             
 @@                     Z           
 (         &                             
   @                     [     
        
  @@                     \     
        
   @                     ]     
        
 @@                     ^     
        
 @@                     _     
  #     @     @X                    `                  #ELLIPTICALOBSCCMPLX%SIGN a   #ELLIPTICALOBSCCMPLX%MATMUL b   #ELLIPTICALOBSCCMPLX%SIZE c   #ELLIPTICALOBSCCMPLX%SQRT d   #ELLIPTICALOBSCCMPLX%PRESENT e   #ELLIPTICALOBSCCMPLX%REAL f   #ARRAY g   #X h   #Y i   #MAJORDIAM j   #MINORDIAM k   #ORIENTATION l   #XC m   #YC n            @                     a     SIGN          @                     b     MATMUL          @                     c     SIZE          @                     d     SQRT          @                     e     PRESENT           @             @      f     REAL       
D @@                     g            ,          &           &                             
 @@                     h           
 -         &                             
 @@                     i           
 .         &                             
   @                     j     
        
  @@                     k     
        
   @                     l     
        
 @@                     m     
        
 @@                     n     
                                             u #POLYGONCLIPREAL o   #POLYGONCLIPCMPLX y   #     @     @X                    o                 #POLYGONCLIPREAL%POLYGON p   #POLYGONCLIPREAL%SIZE s   #POLYGONCLIPREAL%REAL t   #ARRAY u   #X v   #Y w   #POLY x                                                                           �  @                  p     '0            #NUMVERTICES q   #VERTEX r           � d                      q                                                                 0       �d                    r                
        &           &                                         y
                                            @                     s     SIZE           @             @      t     REAL       
D @@                     u           
 4          &           &                             
 @@                     v           
 5         &                             
 @@                     w           
 6         &                             
  @@                      x     0      #POLYGONCLIPREAL%POLYGON p   #     @     @X                    y                 #POLYGONCLIPCMPLX%POLYGON z   #POLYGONCLIPCMPLX%CMPLX }   #POLYGONCLIPCMPLX%AIMAG ~   #POLYGONCLIPCMPLX%SIZE    #POLYGONCLIPCMPLX%REAL �   #ARRAY �   #X �   #Y �   #POLY �                                                                             �  @                  z     '0            #NUMVERTICES {   #VERTEX |           � d                      {                                                                 0       �d                    |                
        &           &                                         y
                                            @                      }     CMPLX          @                      ~     AIMAG          @                          SIZE          @              @      �     REAL       
D @@                     �            ;          &           &                             
 @@                     �           
 <         &                             
 @@                     �           
 =         &                             
  @@                      �     0      #POLYGONCLIPCMPLX%POLYGON z                                              u #POLYGONOBSCREAL �   #POLYGONOBSCCMPLX �   #     @     @X                    �                 #POLYGONOBSCREAL%POLYGON �   #POLYGONOBSCREAL%SIZE �   #POLYGONOBSCREAL%REAL �   #ARRAY �   #X �   #Y �   #POLY �                                                                           �  @                  �     '0            #NUMVERTICES �   #VERTEX �           � d                      �                                                                 0       �d                    �                
        &           &                                         y
                                            @                     �     SIZE           @             @      �     REAL       
D  @                     �           
 B          &           &                             
 @@                     �           
 C         &                             
 @@                     �           
 D         &                             
  @@                      �     0      #POLYGONOBSCREAL%POLYGON �   #     @     @X                    �                 #POLYGONOBSCCMPLX%POLYGON �   #POLYGONOBSCCMPLX%CMPLX �   #POLYGONOBSCCMPLX%AIMAG �   #POLYGONOBSCCMPLX%SIZE �   #POLYGONOBSCCMPLX%REAL �   #ARRAY �   #X �   #Y �   #POLY �                                                                             �  @                  �     '0            #NUMVERTICES �   #VERTEX �           � d                      �                                                                 0       �d                    �                
        &           &                                         y
                                            @              @      �     CMPLX          @                     �     AIMAG          @                     �     SIZE          @                     �     REAL       
D  @                     �            I          &           &                             
 @@                     �           
 J         &                             
 @@                     �           
 K         &                             
  @@                      �     0      #POLYGONOBSCCMPLX%POLYGON �   #     @                          �                  #GAUSSIANCIRCULARAPODIZATION%EXP �   #GAUSSIANCIRCULARAPODIZATION%CMPLX �   #GAUSSIANCIRCULARAPODIZATION%AIMAG �   #GAUSSIANCIRCULARAPODIZATION%SIZE �   #GAUSSIANCIRCULARAPODIZATION%SQRT �   #GAUSSIANCIRCULARAPODIZATION%PRESENT �   #GAUSSIANCIRCULARAPODIZATION%REAL �   #ARRAY �   #X �   #Y �   #OUTERDIAM �   #INNERDIAM �   #XC �   #YC �             @                    �     EXP          @              @      �     CMPLX          @                     �     AIMAG          @                     �     SIZE          @                     �     SQRT          @                     �     PRESENT          @                     �     REAL       
D  @                     �                      &           &                             
 @@                     �           
          &                             
 @@                     �           
          &                             
   @                     �     
        
 @@                     �     
        
 @@                     �     
        
 @@                     �     
  #     @                          �                  #COSINECIRCULARAPODIZATION%COS �   #COSINECIRCULARAPODIZATION%EPSILON �   #COSINECIRCULARAPODIZATION%CMPLX �   #COSINECIRCULARAPODIZATION%AIMAG �   #COSINECIRCULARAPODIZATION%SIZE �   #COSINECIRCULARAPODIZATION%SQRT �   #COSINECIRCULARAPODIZATION%PRESENT �   #COSINECIRCULARAPODIZATION%REAL �   #ARRAY �   #X �   #Y �   #OUTERDIAM �   #INNERDIAM �   #XC �   #YC �                                                                                                                      @                    �     COS          @                     �     EPSILON          @              @      �     CMPLX          @                     �     AIMAG          @                     �     SIZE          @                     �     SQRT          @                     �     PRESENT          @                     �     REAL       
D  @                     �                      &           &                             
 @@                     �           
          &                             
 @@                     �           
          &                             
  @@                     �     
        
   @                     �     
        
 @@                     �     
        
 @@                     �     
  #     @                          �                  #QUADRATICCIRCULARAPODIZATION%EPSILON �   #QUADRATICCIRCULARAPODIZATION%SIZE �   #QUADRATICCIRCULARAPODIZATION%SQRT �   #QUADRATICCIRCULARAPODIZATION%PRESENT �   #ARRAY �   #X �   #Y �   #OUTERDIAM �   #INNERDIAM �   #XC �   #YC �            @                     �     EPSILON          @                     �     SIZE          @                     �     SQRT          @                     �     PRESENT       
D @@                     �                      &           &                             
 @@                     �           
          &                             
 @@                     �           
 	         &                             
  @@                     �     
        
   @                     �     
        
 @@                     �     
        
 @@                     �     
  #     @                          �                   #HALFWIDTH �           @                     �     
   #     @                          �                   #HALFWIDTH �         D  @                     �     
   #     @                          �                    #     @                          �                  #WINDOWCLIP%SIN �   #WINDOWCLIP%ABS �   #WINDOWCLIP%COS �   #WINDOWCLIP%SIZE �   #WINDOWCLIP%SQRT �   #BEAMAMP �   #X �   #Y �   #DX �   #DY �   #WINT �   #WINA �   #XC �   #YC �   #ROTANGLE �   #OBSC �             @                    �     SIN           @                    �     ABS           @                    �     COS           @                    �     SIZE           @                    �     SQRT       
D @@                     �            X          &           &                             
 @@                     �           
 Y         &                             
 @@                     �           
 Z         &                             
   @                     �     
        
   @                     �     
        
   @                     �     
        
   @                     �     
        
   @                     �     
        
   @                     �     
        
  @@                     �     
        
   @                      �          �   q      fn#fn '       b   uapp(CLIPPING_ROUTINES    )  4   J  KINDS    ]  4   J  ERROR_EXIT !   �  a       gen@CIRCULARCLIP !   �  �      CIRCULARCLIPREAL &   �  1      CIRCULARCLIPREAL%SIZE &     1      CIRCULARCLIPREAL%SQRT )   2  4      CIRCULARCLIPREAL%PRESENT &   f  1      CIRCULARCLIPREAL%REAL '   �  p   a   CIRCULARCLIPREAL%ARRAY #     `   a   CIRCULARCLIPREAL%X #   g  `   a   CIRCULARCLIPREAL%Y &   �  0   a   CIRCULARCLIPREAL%DIAM $   �  0   a   CIRCULARCLIPREAL%XC $   '  0   a   CIRCULARCLIPREAL%YC "   W       CIRCULARCLIPCMPLX (   s  2      CIRCULARCLIPCMPLX%CMPLX (   �  2      CIRCULARCLIPCMPLX%AIMAG '   �  1      CIRCULARCLIPCMPLX%SIZE '     1      CIRCULARCLIPCMPLX%SQRT *   9  4      CIRCULARCLIPCMPLX%PRESENT '   m  1      CIRCULARCLIPCMPLX%REAL (   �  p   a   CIRCULARCLIPCMPLX%ARRAY $   	  `   a   CIRCULARCLIPCMPLX%X $   n	  `   a   CIRCULARCLIPCMPLX%Y '   �	  0   a   CIRCULARCLIPCMPLX%DIAM %   �	  0   a   CIRCULARCLIPCMPLX%XC %   .
  0   a   CIRCULARCLIPCMPLX%YC !   ^
  a       gen@CIRCULAROBSC !   �
  �      CIRCULAROBSCREAL &   �  1      CIRCULAROBSCREAL%SIZE &   �  1      CIRCULAROBSCREAL%SQRT )   �  4      CIRCULAROBSCREAL%PRESENT &   3  1      CIRCULAROBSCREAL%REAL '   d  p   a   CIRCULAROBSCREAL%ARRAY #   �  `   a   CIRCULAROBSCREAL%X #   4  `   a   CIRCULAROBSCREAL%Y &   �  0   a   CIRCULAROBSCREAL%DIAM $   �  0   a   CIRCULAROBSCREAL%XC $   �  0   a   CIRCULAROBSCREAL%YC "   $       CIRCULAROBSCCMPLX (   @  2      CIRCULAROBSCCMPLX%CMPLX (   r  2      CIRCULAROBSCCMPLX%AIMAG '   �  1      CIRCULAROBSCCMPLX%SIZE '   �  1      CIRCULAROBSCCMPLX%SQRT *     4      CIRCULAROBSCCMPLX%PRESENT '   :  1      CIRCULAROBSCCMPLX%REAL (   k  p   a   CIRCULAROBSCCMPLX%ARRAY $   �  `   a   CIRCULAROBSCCMPLX%X $   ;  `   a   CIRCULAROBSCCMPLX%Y '   �  0   a   CIRCULAROBSCCMPLX%DIAM %   �  0   a   CIRCULAROBSCCMPLX%XC %   �  0   a   CIRCULAROBSCCMPLX%YC #   +  e       gen@ELLIPTICALCLIP #   �  G     ELLIPTICALCLIPREAL (   �  1      ELLIPTICALCLIPREAL%SIGN *     3      ELLIPTICALCLIPREAL%MATMUL (   ;  1      ELLIPTICALCLIPREAL%SIZE (   l  1      ELLIPTICALCLIPREAL%SQRT +   �  4      ELLIPTICALCLIPREAL%PRESENT (   �  1      ELLIPTICALCLIPREAL%REAL )     p   a   ELLIPTICALCLIPREAL%ARRAY %   r  `   a   ELLIPTICALCLIPREAL%X %   �  `   a   ELLIPTICALCLIPREAL%Y -   2  0   a   ELLIPTICALCLIPREAL%MAJORDIAM -   b  0   a   ELLIPTICALCLIPREAL%MINORDIAM /   �  0   a   ELLIPTICALCLIPREAL%ORIENTATION &   �  0   a   ELLIPTICALCLIPREAL%XC &   �  0   a   ELLIPTICALCLIPREAL%YC $   "  M     ELLIPTICALCLIPCMPLX )   o  1      ELLIPTICALCLIPCMPLX%SIGN +   �  3      ELLIPTICALCLIPCMPLX%MATMUL )   �  1      ELLIPTICALCLIPCMPLX%SIZE )     1      ELLIPTICALCLIPCMPLX%SQRT ,   5  4      ELLIPTICALCLIPCMPLX%PRESENT )   i  1      ELLIPTICALCLIPCMPLX%REAL *   �  p   a   ELLIPTICALCLIPCMPLX%ARRAY &   
  `   a   ELLIPTICALCLIPCMPLX%X &   j  `   a   ELLIPTICALCLIPCMPLX%Y .   �  0   a   ELLIPTICALCLIPCMPLX%MAJORDIAM .   �  0   a   ELLIPTICALCLIPCMPLX%MINORDIAM 0   *  0   a   ELLIPTICALCLIPCMPLX%ORIENTATION '   Z  0   a   ELLIPTICALCLIPCMPLX%XC '   �  0   a   ELLIPTICALCLIPCMPLX%YC #   �  e       gen@ELLIPTICALOBSC #     G     ELLIPTICALOBSCREAL (   f  1      ELLIPTICALOBSCREAL%SIGN *   �  3      ELLIPTICALOBSCREAL%MATMUL (   �  1      ELLIPTICALOBSCREAL%SIZE (   �  1      ELLIPTICALOBSCREAL%SQRT +   ,  4      ELLIPTICALOBSCREAL%PRESENT (   `  1      ELLIPTICALOBSCREAL%REAL )   �  p   a   ELLIPTICALOBSCREAL%ARRAY %     `   a   ELLIPTICALOBSCREAL%X %   a  `   a   ELLIPTICALOBSCREAL%Y -   �  0   a   ELLIPTICALOBSCREAL%MAJORDIAM -   �  0   a   ELLIPTICALOBSCREAL%MINORDIAM /   !   0   a   ELLIPTICALOBSCREAL%ORIENTATION &   Q   0   a   ELLIPTICALOBSCREAL%XC &   �   0   a   ELLIPTICALOBSCREAL%YC $   �   M     ELLIPTICALOBSCCMPLX )   �!  1      ELLIPTICALOBSCCMPLX%SIGN +   /"  3      ELLIPTICALOBSCCMPLX%MATMUL )   b"  1      ELLIPTICALOBSCCMPLX%SIZE )   �"  1      ELLIPTICALOBSCCMPLX%SQRT ,   �"  4      ELLIPTICALOBSCCMPLX%PRESENT )   �"  1      ELLIPTICALOBSCCMPLX%REAL *   )#  p   a   ELLIPTICALOBSCCMPLX%ARRAY &   �#  `   a   ELLIPTICALOBSCCMPLX%X &   �#  `   a   ELLIPTICALOBSCCMPLX%Y .   Y$  0   a   ELLIPTICALOBSCCMPLX%MAJORDIAM .   �$  0   a   ELLIPTICALOBSCCMPLX%MINORDIAM 0   �$  0   a   ELLIPTICALOBSCCMPLX%ORIENTATION '   �$  0   a   ELLIPTICALOBSCCMPLX%XC '   %  0   a   ELLIPTICALOBSCCMPLX%YC     I%  _       gen@POLYGONCLIP     �%  �      POLYGONCLIPREAL 1   �&  Y      POLYGONCLIPREAL%POLYGON+POLYGONS =   �&  u   %   POLYGONCLIPREAL%POLYGON%NUMVERTICES+POLYGONS 8   d'  �   %   POLYGONCLIPREAL%POLYGON%VERTEX+POLYGONS %   (  1      POLYGONCLIPREAL%SIZE %   I(  1      POLYGONCLIPREAL%REAL &   z(  p   a   POLYGONCLIPREAL%ARRAY "   �(  `   a   POLYGONCLIPREAL%X "   J)  `   a   POLYGONCLIPREAL%Y %   �)  Q   a   POLYGONCLIPREAL%POLY !   �)  +     POLYGONCLIPCMPLX 2   &+  Y      POLYGONCLIPCMPLX%POLYGON+POLYGONS >   +  u   %   POLYGONCLIPCMPLX%POLYGON%NUMVERTICES+POLYGONS 9   �+  �   %   POLYGONCLIPCMPLX%POLYGON%VERTEX+POLYGONS '   �,  2      POLYGONCLIPCMPLX%CMPLX '   �,  2      POLYGONCLIPCMPLX%AIMAG &   -  1      POLYGONCLIPCMPLX%SIZE &   =-  1      POLYGONCLIPCMPLX%REAL '   n-  p   a   POLYGONCLIPCMPLX%ARRAY #   �-  `   a   POLYGONCLIPCMPLX%X #   >.  `   a   POLYGONCLIPCMPLX%Y &   �.  R   a   POLYGONCLIPCMPLX%POLY     �.  _       gen@POLYGONOBSC     O/  �      POLYGONOBSCREAL 1   =0  Y      POLYGONOBSCREAL%POLYGON+POLYGONS =   �0  u   %   POLYGONOBSCREAL%POLYGON%NUMVERTICES+POLYGONS 8   1  �   %   POLYGONOBSCREAL%POLYGON%VERTEX+POLYGONS %   �1  1      POLYGONOBSCREAL%SIZE %   �1  1      POLYGONOBSCREAL%REAL &   !2  p   a   POLYGONOBSCREAL%ARRAY "   �2  `   a   POLYGONOBSCREAL%X "   �2  `   a   POLYGONOBSCREAL%Y %   Q3  Q   a   POLYGONOBSCREAL%POLY !   �3  +     POLYGONOBSCCMPLX 2   �4  Y      POLYGONOBSCCMPLX%POLYGON+POLYGONS >   &5  u   %   POLYGONOBSCCMPLX%POLYGON%NUMVERTICES+POLYGONS 9   �5  �   %   POLYGONOBSCCMPLX%POLYGON%VERTEX+POLYGONS '   O6  2      POLYGONOBSCCMPLX%CMPLX '   �6  2      POLYGONOBSCCMPLX%AIMAG &   �6  1      POLYGONOBSCCMPLX%SIZE &   �6  1      POLYGONOBSCCMPLX%REAL '   7  p   a   POLYGONOBSCCMPLX%ARRAY #   �7  `   a   POLYGONOBSCCMPLX%X #   �7  `   a   POLYGONOBSCCMPLX%Y &   E8  R   a   POLYGONOBSCCMPLX%POLY ,   �8  �      GAUSSIANCIRCULARAPODIZATION 0   (:  0      GAUSSIANCIRCULARAPODIZATION%EXP 2   X:  2      GAUSSIANCIRCULARAPODIZATION%CMPLX 2   �:  2      GAUSSIANCIRCULARAPODIZATION%AIMAG 1   �:  1      GAUSSIANCIRCULARAPODIZATION%SIZE 1   �:  1      GAUSSIANCIRCULARAPODIZATION%SQRT 4   ;  4      GAUSSIANCIRCULARAPODIZATION%PRESENT 1   R;  1      GAUSSIANCIRCULARAPODIZATION%REAL 2   �;  p   a   GAUSSIANCIRCULARAPODIZATION%ARRAY .   �;  `   a   GAUSSIANCIRCULARAPODIZATION%X .   S<  `   a   GAUSSIANCIRCULARAPODIZATION%Y 6   �<  0   a   GAUSSIANCIRCULARAPODIZATION%OUTERDIAM 6   �<  0   a   GAUSSIANCIRCULARAPODIZATION%INNERDIAM /   =  0   a   GAUSSIANCIRCULARAPODIZATION%XC /   C=  0   a   GAUSSIANCIRCULARAPODIZATION%YC *   s=        COSINECIRCULARAPODIZATION .   �?  0      COSINECIRCULARAPODIZATION%COS 2   �?  4      COSINECIRCULARAPODIZATION%EPSILON 0   �?  2      COSINECIRCULARAPODIZATION%CMPLX 0   @  2      COSINECIRCULARAPODIZATION%AIMAG /   N@  1      COSINECIRCULARAPODIZATION%SIZE /   @  1      COSINECIRCULARAPODIZATION%SQRT 2   �@  4      COSINECIRCULARAPODIZATION%PRESENT /   �@  1      COSINECIRCULARAPODIZATION%REAL 0   A  p   a   COSINECIRCULARAPODIZATION%ARRAY ,   �A  `   a   COSINECIRCULARAPODIZATION%X ,   �A  `   a   COSINECIRCULARAPODIZATION%Y 4   EB  0   a   COSINECIRCULARAPODIZATION%OUTERDIAM 4   uB  0   a   COSINECIRCULARAPODIZATION%INNERDIAM -   �B  0   a   COSINECIRCULARAPODIZATION%XC -   �B  0   a   COSINECIRCULARAPODIZATION%YC -   C  %      QUADRATICCIRCULARAPODIZATION 5   *D  4      QUADRATICCIRCULARAPODIZATION%EPSILON 2   ^D  1      QUADRATICCIRCULARAPODIZATION%SIZE 2   �D  1      QUADRATICCIRCULARAPODIZATION%SQRT 5   �D  4      QUADRATICCIRCULARAPODIZATION%PRESENT 3   �D  p   a   QUADRATICCIRCULARAPODIZATION%ARRAY /   dE  `   a   QUADRATICCIRCULARAPODIZATION%X /   �E  `   a   QUADRATICCIRCULARAPODIZATION%Y 7   $F  0   a   QUADRATICCIRCULARAPODIZATION%OUTERDIAM 7   TF  0   a   QUADRATICCIRCULARAPODIZATION%INNERDIAM 0   �F  0   a   QUADRATICCIRCULARAPODIZATION%XC 0   �F  0   a   QUADRATICCIRCULARAPODIZATION%YC !   �F  K       SETEDGESMOOTHING +   /G  0   a   SETEDGESMOOTHING%HALFWIDTH !   _G  K       GETEDGESMOOTHING +   �G  0   a   GETEDGESMOOTHING%HALFWIDTH ,   �G  <       RESTOREDEFAULTEDGESMOOTHING    H  	      WINDOWCLIP    I  0      WINDOWCLIP%SIN    OI  0      WINDOWCLIP%ABS    I  0      WINDOWCLIP%COS     �I  1      WINDOWCLIP%SIZE     �I  1      WINDOWCLIP%SQRT #   J  p   a   WINDOWCLIP%BEAMAMP    �J  `   a   WINDOWCLIP%X    �J  `   a   WINDOWCLIP%Y    AK  0   a   WINDOWCLIP%DX    qK  0   a   WINDOWCLIP%DY     �K  0   a   WINDOWCLIP%WINT     �K  0   a   WINDOWCLIP%WINA    L  0   a   WINDOWCLIP%XC    1L  0   a   WINDOWCLIP%YC $   aL  0   a   WINDOWCLIP%ROTANGLE     �L  0   a   WINDOWCLIP%OBSC 