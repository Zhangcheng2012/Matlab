  ņ>  ŧ   k820309    ø  47D3B   6.6     ĻāB                                                                                                                        
       C:\My_Documents\internal_metrology\diffraction\int_met_comserver\int_met_routines.f90 INTMETROUTINES          FOCUSLENS APPLYMASK APPLYMASKROTATE APPLYMASKGENERAL APPLYMASKX APPLYMASKXROUNDED APPLYMASKPOLY                                         
                                               
                                               
            @          @                      
                        @                      
                        @                      
                                              
                    @                       '           #DX 	   #DY 
   #WAVELENGTH    #CURVATURE    #FFTW_PLAN2D_FOR    #FFTW_PLAN2D_REV    #CZTPLAN    #AMP    #X    #Y    #LPFFTWPLANLOCK    #LPREADWRITEUNFLOCK    #DUMMY             d                     	           
                            
                         0.0         d                     
          
                            
                         0.0         d                               
                            
                         0.0         d                               
                            
                         0.0          d                                              d                          (                   d                           `   0      #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS                @                       '`            #WAVEFRONTS^FFTW_PLAN1D_X_FOR    #WAVEFRONTS^FFTW_PLAN1D_Y_FOR    #WAVEFRONTS^FFTW_PLAN1D_X_INV    #WAVEFRONTS^FFTW_PLAN1D_Y_INV    #WAVEFRONTS^V_FFTW1D_X    #WAVEFRONTS^V_FFTW1D_Y             D                                                                                     0         D                                                                                    0         D                                                                                    0         D                                                                                    0       D                                            &                                         y                                          D                           @                &                                         y                                        d                                            &           &                                         y                                        d                            ŧ      	  
        &                                         y
                                        d                            Ü      
  
        &                                         y
                                            d                          ü                                                           0         d                                                                                     0          d                                                @                       'đ           #FOCLEN    #DIAM    #XDECENTER     #YDECENTER !   #ABERR "             D                                 
            D                               
                            
                         0.0         D                                
                            
                         0.0         D                     !          
                            
                         0.0          D                      "     Đ         #ZERNIKEABERRATION #                 @                  #     'Đ           #OPTICS_ROUTINES^REFDIAM $   #OPTICS_ROUTINES^XO %   #OPTICS_ROUTINES^YO &   #OPTICS_ROUTINES^MODENUM '   #OPTICS_ROUTINES^COEFFVALUE (   #OPTICS_ROUTINES^ISRMS )   #OPTICS_ROUTINES^MAXMODES *            d                    $           
                            
                         0.0         d                    %          
                            
                         0.0         d                    &          
                            
                         0.0         d                     '     $             p      p $       p $                    $     $                                      0         d                    (     $   ¨        
  p      p $       p $                    $     $            
                         0.0         d                     )     Č                                                     ė§Ļ x           d                     *     Ė                                                          0#     @                         +                 #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #GETWAVEFRONTSAMPLING%SIZE ,   #GETWAVEFRONTSAMPLING%ASSOCIATED -   #GETWAVEFRONTSAMPLING%PRESENT .   #BEAM /   #NX 0   #NY 1   #DX 2   #DY 3   #XO 4   #YO 5            @                     ,     SIZE          @                     -     ASSOCIATED          @                     .     PRESENT       
   @                      /          #WAVEFRONT            @                      0                @                      1                @                     2     
           @                     3     
           @                     4     
           @                     5     
   #     @                         6                 #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #PROPAGATE%SIZE 7   #PROPAGATE%ABS 8   #PROPAGATE%PRESENT 9   #PROPAGATE%EPSILON :   #PROPAGATE%SIGN ;   #BEAM <   #Z =   #DXO >   #DYO ?   #APPLYCURV @            @                     7     SIZE          @                     8     ABS          @                     9     PRESENT          @                     :     EPSILON          @                     ;     SIGN      
  @                      <           #WAVEFRONT          
   @                     =     
        
  @                     >     
        
  @                     ?     
        
  @                      @       #     @                         A              	   #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #CLIPRECT%ABS B   #CLIPRECT%PRESENT C   #CLIPRECT%EPSILON D   #CLIPRECT%COS E   #CLIPRECT%SIN F   #BEAM G   #LENGTH H   #WIDTH I   #XC J   #YC K   #ANGLE L   #OBSC M   #TILTANGLE N   #TILTORIENTATION O            @                     B     ABS          @                     C     PRESENT          @                     D     EPSILON          @                     E     COS          @                     F     SIN       
  @                      G           #WAVEFRONT          
   @                     H     
        
   @                     I     
        
  @                     J     
        
  @                     K     
        
  @                     L     
        
  @                      M             
  @                     N     
        
  @                     O     
  #     @                         P                 #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #WAVEFRONTCUMSUM%SIZE Q   #WAVEFRONTCUMSUM%ABS R   #BEAM1 S   #BEAM2 T            @                     Q     SIZE          @                     R     ABS       
  @                      S           #WAVEFRONT          
   @                      T          #WAVEFRONT    #     @                         U                 #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #CLEARWAVEFRONT%ASSOCIATED V   #BEAM W            @                     V     ASSOCIATED       
  @                      W           #WAVEFRONT    #     @                         X                 #CLIPPOLY%POLYGON Y   #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #CLIPPOLY%ABS \   #CLIPPOLY%PRESENT ]   #CLIPPOLY%EPSILON ^   #CLIPPOLY%COS _   #CLIPPOLY%SIN `   #BEAM a   #POLY b   #XC c   #YC d   #ANGLE e   #OBSC f   #TILTANGLE g   #TILTORIENTATION h                @                  Y     '0            #WAVEFRONTS^NUMVERTICES Z   #WAVEFRONTS^VERTEX [            d                     Z                                                                 0       d                   [                
        &           &                                         y
                                            @                     \     ABS          @                     ]     PRESENT          @                     ^     EPSILON          @                     _     COS          @                     `     SIN       
  @                      a           #WAVEFRONT          
   @                      b     0      #CLIPPOLY%POLYGON Y         
  @                     c     
        
  @                     d     
        
  @                     e     
        
  @                      f             
  @                     g     
        
  @                     h     
  %     @                       i                  
   #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #BEAM j         
   @                      j          #WAVEFRONT    #     @                         k              
   #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #GENTOPHATBEAM%PRESENT l   #TOPHAT m   #NX n   #NY o   #DX p   #DY q   #LAMBDA r   #DBEAM s   #XC t   #YC u   #POWER v            @                     l     PRESENT       
  @                      m           #WAVEFRONT          
   @                      n             
   @                      o             
   @                     p     
        
   @                     q     
        
   @                     r     
        
   @                     s     
        
  @                     t     
        
  @                     u     
        
  @                     v     
  #     @                         w                 #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #CLIPCIRC%ABS x   #CLIPCIRC%PRESENT y   #CLIPCIRC%EPSILON z   #CLIPCIRC%COS {   #BEAM |   #DIAM }   #XC ~   #YC    #OBSC    #TILTANGLE    #TILTORIENTATION             @                     x     ABS          @                     y     PRESENT          @                     z     EPSILON          @                     {     COS       
  @                      |           #WAVEFRONT          
   @                     }     
        
  @                     ~     
        
  @                          
        
  @                                   
  @                          
        
  @                          
  #     @                                          #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #APPLYARBITRARYMASK%SIZE    #APPLYARBITRARYMASK%PRESENT    #BEAM    #MASK    #NEGATIVE              @                         SIZE           @                         PRESENT       
  @                                 #WAVEFRONT          
   @                                #WAVEFRONT          
  @                             #     @                                            #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #BEAM    #FOCUSLENS_F    #FOCUSLENS_D    #DXOUT    #DYOUT          
D @@                                 #WAVEFRONT          
  @@                          
        
  @@                          
        
  @@                          
        
  @@                          
  #     @                                        
   #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #APPLYMASK%PRESENT    #BEAM    #LEN_R    #LEN_T    #OFFSET    #DIRECTION    #ROTANGLE    #X_ALIGN    #Y_ALIGN    #TILTANGLE    #TILTORIENTATION              @                         PRESENT       
D @@                                 #WAVEFRONT          
   @                          
        
   @                          
        
   @                          
        
   @                                 1       
 @@                          
        
 @@                          
        
 @@                          
        
 @@                          
        
 @@                          
  #     @                                           #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #APPLYMASKROTATE%PRESENT    #BEAM    #LEN_R    #LEN_T    #OFFSET     #ROTANGLE Ą   #DIRECTION ĸ   #X_ALIGN Ŗ   #Y_ALIGN ¤             @                         PRESENT       
D @@                                 #WAVEFRONT          
   @                          
        
   @                          
        
   @                           
        
  @@                     Ą     
        
   @                     ĸ            1       
 @@                     Ŗ     
        
 @@                     ¤     
  #     @                          Ĩ                  #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #BEAM Ļ   #LEN_X §   #LEN_Y ¨   #OFF_X Š   #OFF_Y Ē         
D @@                      Ļ           #WAVEFRONT          
  @@                     §     
        
  @@                     ¨     
        
  @@                     Š     
        
  @@                     Ē     
  #     @                          Ģ                 #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #APPLYMASKX%SQRT Ŧ   #BEAM ­   #RADIUS Ž   #LENGTH ¯             @                    Ŧ     SQRT       
D @@                      ­           #WAVEFRONT          
   @                     Ž     
        
  @@                     ¯     
  #     @                          °                 #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #APPLYMASKXROUNDED%SQRT ą   #BEAM ˛   #RADIUS ŗ   #LENGTH ´   #CORNER_RAD ĩ             @                    ą     SQRT       
D @@                      ˛           #WAVEFRONT          
   @                     ŗ     
        
  @@                     ´     
        
   @                     ĩ     
  #     @                          ļ                  #WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS    #WAVEFRONT    #BEAM ˇ   #VERTICES ¸   #XC š   #YC ē         
D @@                      ˇ           #WAVEFRONT          
   @                     ¸           
          & p          & p                            
  @@                     š     
        
  @@                     ē     
     ¨   m      fn#fn $     l   b   uapp(INTMETROUTINES      4   J  KINDS    ĩ  4   J  SI_UNITS    é  4   J  CONSTANTS      4   J  WAVEFRONTS     Q  4   J  OPTICS_ROUTINES !     4   J  UTILITY_ROUTINES    š  4   J  ERROR_EXIT %   í  đ       WAVEFRONT+WAVEFRONTS (   Ũ  w   %   WAVEFRONT%DX+WAVEFRONTS (   T  w   %   WAVEFRONT%DY+WAVEFRONTS 0   Ë  w   %   WAVEFRONT%WAVELENGTH+WAVEFRONTS /   B  w   %   WAVEFRONT%CURVATURE+WAVEFRONTS 5   š  8   %   WAVEFRONT%FFTW_PLAN2D_FOR+WAVEFRONTS 5   ņ  8   %   WAVEFRONT%FFTW_PLAN2D_REV+WAVEFRONTS -   )  f   %   WAVEFRONT%CZTPLAN+WAVEFRONTS Z     ú      WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS+DISCRETE_TRANSFORMS=CZTFFTWPLANS q     u   %   WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS%FFTW_PLAN1D_X_FOR+DISCRETE_TRANSFORMS=FFTW_PLAN1D_X_FOR q   ū  u   %   WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS%FFTW_PLAN1D_Y_FOR+DISCRETE_TRANSFORMS=FFTW_PLAN1D_Y_FOR q   s  u   %   WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS%FFTW_PLAN1D_X_INV+DISCRETE_TRANSFORMS=FFTW_PLAN1D_X_INV q   č  u   %   WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS%FFTW_PLAN1D_Y_INV+DISCRETE_TRANSFORMS=FFTW_PLAN1D_Y_INV c   ]	  ¤   %   WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS%V_FFTW1D_X+DISCRETE_TRANSFORMS=V_FFTW1D_X c   
  ¤   %   WAVEFRONTS^REPLACEWAVEFRONT%CZTFFTWPLANS%V_FFTW1D_Y+DISCRETE_TRANSFORMS=V_FFTW1D_Y )   Ĩ
  ´   %   WAVEFRONT%AMP+WAVEFRONTS '   Y  ¤   %   WAVEFRONT%X+WAVEFRONTS '   ũ  ¤   %   WAVEFRONT%Y+WAVEFRONTS 4   Ą  u   %   WAVEFRONT%LPFFTWPLANLOCK+WAVEFRONTS 8     u   %   WAVEFRONT%LPREADWRITEUNFLOCK+WAVEFRONTS +     8   %   WAVEFRONT%DUMMY+WAVEFRONTS +   Ã  {       SIMPLELENS+OPTICS_ROUTINES 2   >  8   %   SIMPLELENS%FOCLEN+OPTICS_ROUTINES 0   v  w   %   SIMPLELENS%DIAM+OPTICS_ROUTINES 5   í  w   %   SIMPLELENS%XDECENTER+OPTICS_ROUTINES 5   d  w   %   SIMPLELENS%YDECENTER+OPTICS_ROUTINES 1   Û  O   %   SIMPLELENS%ABERR+OPTICS_ROUTINES -   *  ˙       ZERNIKEABERRATION+WAVEFRONTS =   )  w   %   ZERNIKEABERRATION%REFDIAM+WAVEFRONTS=REFDIAM 3      w   %   ZERNIKEABERRATION%XO+WAVEFRONTS=XO 3     w   %   ZERNIKEABERRATION%YO+WAVEFRONTS=YO =     ­   %   ZERNIKEABERRATION%MODENUM+WAVEFRONTS=MODENUM C   ;  ¯   %   ZERNIKEABERRATION%COEFFVALUE+WAVEFRONTS=COEFFVALUE 9   ę  t   %   ZERNIKEABERRATION%ISRMS+WAVEFRONTS=ISRMS ?   ^  u   %   ZERNIKEABERRATION%MAXMODES+WAVEFRONTS=MAXMODES 0   Ķ        GETWAVEFRONTSAMPLING+WAVEFRONTS :   ė  1      GETWAVEFRONTSAMPLING%SIZE+WAVEFRONTS=SIZE F     7      GETWAVEFRONTSAMPLING%ASSOCIATED+WAVEFRONTS=ASSOCIATED @   T  4      GETWAVEFRONTSAMPLING%PRESENT+WAVEFRONTS=PRESENT 5     C   e   GETWAVEFRONTSAMPLING%BEAM+WAVEFRONTS 3   Ë  0   e   GETWAVEFRONTSAMPLING%NX+WAVEFRONTS 3   û  0   e   GETWAVEFRONTSAMPLING%NY+WAVEFRONTS 3   +  0   e   GETWAVEFRONTSAMPLING%DX+WAVEFRONTS 3   [  0   e   GETWAVEFRONTSAMPLING%DY+WAVEFRONTS 3     0   e   GETWAVEFRONTSAMPLING%XO+WAVEFRONTS 3   ģ  0   e   GETWAVEFRONTSAMPLING%YO+WAVEFRONTS %   ë        PROPAGATE+WAVEFRONTS /   ˙  1      PROPAGATE%SIZE+WAVEFRONTS=SIZE -   0  0      PROPAGATE%ABS+WAVEFRONTS=ABS 5   `  4      PROPAGATE%PRESENT+WAVEFRONTS=PRESENT 5     4      PROPAGATE%EPSILON+WAVEFRONTS=EPSILON /   Č  1      PROPAGATE%SIGN+WAVEFRONTS=SIGN *   ų  C   e   PROPAGATE%BEAM+WAVEFRONTS '   <  0   e   PROPAGATE%Z+WAVEFRONTS )   l  0   e   PROPAGATE%DXO+WAVEFRONTS )     0   e   PROPAGATE%DYO+WAVEFRONTS /   Ė  0   e   PROPAGATE%APPLYCURV+WAVEFRONTS $   ü  E      CLIPRECT+WAVEFRONTS ,   A  0      CLIPRECT%ABS+WAVEFRONTS=ABS 4   q  4      CLIPRECT%PRESENT+WAVEFRONTS=PRESENT 4   Ĩ  4      CLIPRECT%EPSILON+WAVEFRONTS=EPSILON ,   Ų  0      CLIPRECT%COS+WAVEFRONTS=COS ,   	  0      CLIPRECT%SIN+WAVEFRONTS=SIN )   9  C   e   CLIPRECT%BEAM+WAVEFRONTS +   |  0   e   CLIPRECT%LENGTH+WAVEFRONTS *   Ŧ  0   e   CLIPRECT%WIDTH+WAVEFRONTS '   Ü  0   e   CLIPRECT%XC+WAVEFRONTS '     0   e   CLIPRECT%YC+WAVEFRONTS *   <  0   e   CLIPRECT%ANGLE+WAVEFRONTS )   l  0   e   CLIPRECT%OBSC+WAVEFRONTS .     0   e   CLIPRECT%TILTANGLE+WAVEFRONTS 4   Ė  0   e   CLIPRECT%TILTORIENTATION+WAVEFRONTS +   ü  Â       WAVEFRONTCUMSUM+WAVEFRONTS 5   ž  1      WAVEFRONTCUMSUM%SIZE+WAVEFRONTS=SIZE 3   ī  0      WAVEFRONTCUMSUM%ABS+WAVEFRONTS=ABS 1      C   e   WAVEFRONTCUMSUM%BEAM1+WAVEFRONTS 1   b   C   e   WAVEFRONTCUMSUM%BEAM2+WAVEFRONTS *   Ĩ   ĸ       CLEARWAVEFRONT+WAVEFRONTS @   G!  7      CLEARWAVEFRONT%ASSOCIATED+WAVEFRONTS=ASSOCIATED /   ~!  C   e   CLEARWAVEFRONT%BEAM+WAVEFRONTS $   Á!  N      CLIPPOLY+WAVEFRONTS *   #  o      CLIPPOLY%POLYGON+POLYGONS B   ~#  u   %   CLIPPOLY%POLYGON%NUMVERTICES+POLYGONS=NUMVERTICES 8   ķ#  ´   %   CLIPPOLY%POLYGON%VERTEX+POLYGONS=VERTEX ,   §$  0      CLIPPOLY%ABS+WAVEFRONTS=ABS 4   ×$  4      CLIPPOLY%PRESENT+WAVEFRONTS=PRESENT 4   %  4      CLIPPOLY%EPSILON+WAVEFRONTS=EPSILON ,   ?%  0      CLIPPOLY%COS+WAVEFRONTS=COS ,   o%  0      CLIPPOLY%SIN+WAVEFRONTS=SIN )   %  C   e   CLIPPOLY%BEAM+WAVEFRONTS )   â%  J   e   CLIPPOLY%POLY+WAVEFRONTS '   ,&  0   e   CLIPPOLY%XC+WAVEFRONTS '   \&  0   e   CLIPPOLY%YC+WAVEFRONTS *   &  0   e   CLIPPOLY%ANGLE+WAVEFRONTS )   ŧ&  0   e   CLIPPOLY%OBSC+WAVEFRONTS .   ė&  0   e   CLIPPOLY%TILTANGLE+WAVEFRONTS 4   '  0   e   CLIPPOLY%TILTORIENTATION+WAVEFRONTS /   L'         WAVEFRONTWAVELENGTH+WAVEFRONTS 4   Ķ'  C   e   WAVEFRONTWAVELENGTH%BEAM+WAVEFRONTS )   (  ō       GENTOPHATBEAM+WAVEFRONTS 9   )  4      GENTOPHATBEAM%PRESENT+WAVEFRONTS=PRESENT 0   <)  C   e   GENTOPHATBEAM%TOPHAT+WAVEFRONTS ,   )  0   e   GENTOPHATBEAM%NX+WAVEFRONTS ,   ¯)  0   e   GENTOPHATBEAM%NY+WAVEFRONTS ,   ß)  0   e   GENTOPHATBEAM%DX+WAVEFRONTS ,   *  0   e   GENTOPHATBEAM%DY+WAVEFRONTS 0   ?*  0   e   GENTOPHATBEAM%LAMBDA+WAVEFRONTS /   o*  0   e   GENTOPHATBEAM%DBEAM+WAVEFRONTS ,   *  0   e   GENTOPHATBEAM%XC+WAVEFRONTS ,   Ī*  0   e   GENTOPHATBEAM%YC+WAVEFRONTS /   ˙*  0   e   GENTOPHATBEAM%POWER+WAVEFRONTS $   /+        CLIPCIRC+WAVEFRONTS ,   J,  0      CLIPCIRC%ABS+WAVEFRONTS=ABS 4   z,  4      CLIPCIRC%PRESENT+WAVEFRONTS=PRESENT 4   Ž,  4      CLIPCIRC%EPSILON+WAVEFRONTS=EPSILON ,   â,  0      CLIPCIRC%COS+WAVEFRONTS=COS )   -  C   e   CLIPCIRC%BEAM+WAVEFRONTS )   U-  0   e   CLIPCIRC%DIAM+WAVEFRONTS '   -  0   e   CLIPCIRC%XC+WAVEFRONTS '   ĩ-  0   e   CLIPCIRC%YC+WAVEFRONTS )   å-  0   e   CLIPCIRC%OBSC+WAVEFRONTS .   .  0   e   CLIPCIRC%TILTANGLE+WAVEFRONTS 4   E.  0   e   CLIPCIRC%TILTORIENTATION+WAVEFRONTS .   u.  Ø       APPLYARBITRARYMASK+WAVEFRONTS 8   M/  1      APPLYARBITRARYMASK%SIZE+WAVEFRONTS=SIZE >   ~/  4      APPLYARBITRARYMASK%PRESENT+WAVEFRONTS=PRESENT 3   ˛/  C   e   APPLYARBITRARYMASK%BEAM+WAVEFRONTS 3   õ/  C   e   APPLYARBITRARYMASK%MASK+WAVEFRONTS 7   80  0   e   APPLYARBITRARYMASK%NEGATIVE+WAVEFRONTS    h0  ģ       FOCUSLENS    #1  C   a   FOCUSLENS%BEAM &   f1  0   a   FOCUSLENS%FOCUSLENS_F &   1  0   a   FOCUSLENS%FOCUSLENS_D     Æ1  0   a   FOCUSLENS%DXOUT     ö1  0   a   FOCUSLENS%DYOUT    &2        APPLYMASK "   =3  4      APPLYMASK%PRESENT    q3  C   a   APPLYMASK%BEAM     ´3  0   a   APPLYMASK%LEN_R     ä3  0   a   APPLYMASK%LEN_T !   4  0   a   APPLYMASK%OFFSET $   D4  8   a   APPLYMASK%DIRECTION #   |4  0   a   APPLYMASK%ROTANGLE "   Ŧ4  0   a   APPLYMASK%X_ALIGN "   Ü4  0   a   APPLYMASK%Y_ALIGN $   5  0   a   APPLYMASK%TILTANGLE *   <5  0   a   APPLYMASK%TILTORIENTATION     l5  ų       APPLYMASKROTATE (   e6  4      APPLYMASKROTATE%PRESENT %   6  C   a   APPLYMASKROTATE%BEAM &   Ü6  0   a   APPLYMASKROTATE%LEN_R &   7  0   a   APPLYMASKROTATE%LEN_T '   <7  0   a   APPLYMASKROTATE%OFFSET )   l7  0   a   APPLYMASKROTATE%ROTANGLE *   7  8   a   APPLYMASKROTATE%DIRECTION (   Ô7  0   a   APPLYMASKROTATE%X_ALIGN (   8  0   a   APPLYMASKROTATE%Y_ALIGN !   48  ¯       APPLYMASKGENERAL &   ã8  C   a   APPLYMASKGENERAL%BEAM '   &9  0   a   APPLYMASKGENERAL%LEN_X '   V9  0   a   APPLYMASKGENERAL%LEN_Y '   9  0   a   APPLYMASKGENERAL%OFF_X '   ļ9  0   a   APPLYMASKGENERAL%OFF_Y    æ9  °       APPLYMASKX     :  1      APPLYMASKX%SQRT     Į:  C   a   APPLYMASKX%BEAM "   
;  0   a   APPLYMASKX%RADIUS "   :;  0   a   APPLYMASKX%LENGTH "   j;  Į       APPLYMASKXROUNDED '   1<  1      APPLYMASKXROUNDED%SQRT '   b<  C   a   APPLYMASKXROUNDED%BEAM )   Ĩ<  0   a   APPLYMASKXROUNDED%RADIUS )   Õ<  0   a   APPLYMASKXROUNDED%LENGTH -   =  0   a   APPLYMASKXROUNDED%CORNER_RAD    5=  Ą       APPLYMASKPOLY #   Ö=  C   a   APPLYMASKPOLY%BEAM '   >  x   a   APPLYMASKPOLY%VERTICES !   >  0   a   APPLYMASKPOLY%XC !   Á>  0   a   APPLYMASKPOLY%YC 