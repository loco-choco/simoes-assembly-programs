; Prompt de Texto
; DEPENDENCIAS: scanf.asm, printf.asm, malloc.asm, string.asm

jmp main

;---- Sistema de Arquivo ----
fs_start:
;	IMAGES ------
;	SM 	  ---
file_none_name : string "none" ; 5 bytes
file_none_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_none_cursor : var #1
file_none_data : string "
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   "
file_none_eof : var #1
	static file_none_eof + #0, #65535 ; EOF(FFFF)
file_sm2_name : string "sm2" ; 4 bytes
file_sm2_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sm2_cursor : var #1
file_sm2_data : string "
                ..
                .-
 .             .  
  .               
  .               
   .              
    .+            
    #-   .        
   .%. .-=.   :=- 
   :%- +@@=   :@% 
   .@= .#%: =*++- 
   := .     .::   
   :+           . 
   :*          .. 
   -=       ...:  
   ::    .......  
    ......:.:..-  "
file_sm2_eof : var #1
	static file_sm2_eof + #0, #65535 ; EOF(FFFF)
file_sm3_name : string "sm3" ; 4 bytes
file_sm3_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sm3_cursor : var #1
file_sm3_data : string "
       ==         
       .          
                  
                  
                  
                  
    =- ==\\=. //==  
    *-.@@0: .:+0- 
    ** *=.  =- / \\
    */ |   .  .\\_|
    =|_/:   __     
    +=.    /  \\.  
    *.        ..  
    *       . :   
    -.   ......   
    ......:...:.  
    .             
                  "
file_sm3_eof : var #1
	static file_sm3_eof + #0, #65535 ; EOF(FFFF)
file_sm4_name : string "sm4" ; 4 bytes
file_sm4_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sm4_cursor : var #1
file_sm4_data : string "
               .. 
 .             .- 
 :            . : 
 .             .- 
  :            .. 
  .-.          :  
    -.  :: :=..:  
    -  ++=..==++  
   :: -@-+- .=##  
   -: -%+*:  -%=  
   :. .:=- .++.   
   :.       :.    
   ::     ......  
   ::..    .  :.  
   :.....   . :   
   :...........   
   :......... :   
   .              "
file_sm4_eof : var #1
	static file_sm4_eof + #0, #65535 ; EOF(FFFF)
file_sm5_name : string "sm5" ; 4 bytes
file_sm5_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sm5_cursor : var #1
file_sm5_data : string "
                 - 
     .          .. 
     .         .   
     .             
      .            
                   
       --          
       #.          
      .#           
      :#. :-.  .-. 
      .@:  \\/   \\/ 
      .=   /\\   /\\ 
      .-   \\    /  
      :+    \\/\\/   
      :=       .:  
      :-    .....  
       ......:..:  
       ........ . "
file_sm5_eof : var #1
	static file_sm5_eof + #0, #65535 ; EOF(FFFF)
file_sm6_name : string "sm6" ; 4 bytes
file_sm6_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sm6_cursor : var #1
file_sm6_data : string "
                 - 
     .          .. 
     .         .   
     .             
      .            
                   
       --          
       #.          
      .#           
      :#. :-.  .-. 
      .@: (0)  (0).
      .=           
      .-         . 
      :+        .  
      :=       .:  
      :-    .....  
       ......:..:  
       ........ . "
file_sm6_eof : var #1
	static file_sm6_eof + #0, #65535 ; EOF(FFFF)
file_sm7_name : string "sm7" ; 4 bytes
file_sm7_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sm7_cursor : var #1
file_sm7_data : string "
              =:   
.            .     
.           .      
                   
 .               ? 
 .             ?   
                   
   =-           ?  
  .#.       :.     
  -*        *-     
  ++  -.           
  +*  =%-          
  +@.  .  -+-      
  --      =%*.     
    .    -=:.      
    ..  ::    .    
    .:.:..         
    :.:.           
    ...           "
file_sm7_eof : var #1
	static file_sm7_eof + #0, #65535 ; EOF(FFFF)
file_sm8_name : string "sm8" ; 4 bytes
file_sm8_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sm8_cursor : var #1
file_sm8_data : string "
                -=
.             ..  
.            .    
 .                
  .               
     .            
    +=            
   =#             
   #*             
   #*   .    .    
   #@:          . 
   *-     \\/    :
   +             .
   #-            .
   #.           .:
  .#        ....:.
   :.   .....:...:
   ............ :-
                  "
file_sm8_eof : var #1
	static file_sm8_eof + #0, #65535 ; EOF(FFFF)
file_sm9_name : string "sm9" ; 4 bytes
file_sm9_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sm9_cursor : var #1
file_sm9_data : string "
                ..
                .-
 .             .  
  .               
  .               
   .              
    .+            
    #-   .        
   .%.            
   :%- +  =   :   
   .@= .\\_/ =\\_/- 
   := .     .::   
   :+      \\/\\/ . 
   :*          .. 
   -=       ...:  
   ::    .......  
    ......:.:..-  "
file_sm9_eof : var #1
	static file_sm9_eof + #0, #65535 ; EOF(FFFF)
file_sm10_name : string "sm10" ; 5 bytes
file_sm10_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_sm10_cursor : var #1
file_sm10_data : string "
             -:   
            .     
           .      
 .                
                  
    .             
   =-             
  .#  +-   .=     
  -* :@@.  -@+    
  -# -@@:  .@*    
  -%. #@..*+*-    
  --   .  --    |/
  -:         .  / 
  -=        .. /  
  =-        : /   
  -:    ...../    
   . .......:     
  ......... :     "
file_sm10_eof : var #1
	static file_sm10_eof + #0, #65535 ; EOF(FFFF)
file_sm11_name : string "sm11" ; 5 bytes
file_sm11_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_sm11_cursor : var #1
file_sm11_data : string "
 -..              
 :              -: 
 ..:.         ::-.
 :.-          :=..
 :.:    .        .
.-+      :-   .+-.
-=*. .. -%@:  :@@-
=#...   =@#-:-=#*.
=*:..   .+: :*@+-:
=*+=-. ::-   :: :.
=*=-..  .-.:::: : 
-#=:..  ---=-.::: 
-=:: . .- ::=--.: 
-..:.=- =..:.::.  
-:--*-: :+:--=    
::-+==.  .-=-:    
..:-*+:   :::     
..:-*+:. ==       
..:=++: :*:       "
file_sm11_eof : var #1
	static file_sm11_eof + #0, #65535 ; EOF(FFFF)
;	SP	   ---
file_sp1_name : string "sp1" ; 4 bytes
file_sp1_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sp1_cursor : var #1
file_sp1_data : string "
   ..              
 .:::              
 ::::        ..::: 
 ::::      .::::::.
 :::.    .:::::::::
 .::... .:::::::::.
  .::::::::::::::. 
  *+.::=::         
 -@#::*@-:.        
 +@*.:%@#::        
 -#-::%@%::        
::::::-*=::        
.::::::.::.        
 .:::::::.         
   .::::.          
   ::::::          
   ::::::          
    ..:.:.        "
file_sp1_eof : var #1
	static file_sp1_eof + #0, #65535 ; EOF(FFFF)
file_sp1a_name : string "sp1a" ; 5 bytes
file_sp1a_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_sp1a_cursor : var #1
file_sp1a_data : string "
   ..              
 .:::              
 ::::        ..::: 
 ::::      .::::::.
 :::.    .:::::::::
 .::... .:::::::::.
  .::::::::::::::. 
  *+.::=::         
 -@#::*@-:.        
 +@*.:%@#::        
 -#-::%@%::        
::::::-*=::        
.::::::.::.        
 .:::::::.         
   .::::.          
   ::::::          
   ::::::  Aaaaa   
    ..:.:. \\ | /  "
file_sp1a_eof : var #1
	static file_sp1a_eof + #0, #65535 ; EOF(FFFF)
file_sp2_name : string "sp2" ; 4 bytes
file_sp2_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sp2_cursor : var #1
file_sp2_data : string "
      ..        . 
     ::::    .::::
    .::::. .::::::
    :::::  :::::::
   .::::. ::::::::
   ::.....:::::::.
   .::::::::::::. 
  .::::::::::.    
  ::::...::::.    
 -%#-::==--:::    
 +@#:::%@@@=::    
.:-::::-##+.::    
.:::::::::.:..    
 .::::::::.:.     
   ..::::.        
     :::::        
     ::::::       
    .::::::.      
     .....        "
file_sp2_eof : var #1
	static file_sp2_eof + #0, #65535 ; EOF(FFFF)
file_sp2b_name : string "sp2b" ; 5 bytes
file_sp2b_name_padding : var #9 ; 10 de padding para dar 14 bytes de file_name
file_sp2b_cursor : var #1
file_sp2b_data : string "
      ..        . 
     ::::    .::::
    .::::. .::::::
    :::::  :::::::
   .::::. ::::::::
   ::.....:::::::.
   .:::::::::::::. 
  \\:::::::/::.    
  :\\::.../:::.    
 -%#-::==--:::    
 +@#:::%@@@=U:    
.:-::::-##+.U:    
.:::::::::.U..    
 .::::::::.:.     
   ..::::.        
     :::::        
     ::::::       
    .::::::.      
     .....        "
file_sp2b_eof : var #1
	static file_sp2b_eof + #0, #65535 ; EOF(FFFF)
file_sp4_name : string "sp4" ; 4 bytes
file_sp4_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sp4_cursor : var #1
file_sp4_data : string "
      ..          
    .:::.      ... 
    :::::    .::::
   .::::.  .::::::
   :::::  ::::::::
  .:..:..:::::::::
  ..::::::::::::. 
  .#=.:::-:::..    
  *@+.::#@:::.     
  %@:..+@@+.::     
  --:..*@@=.::     
....-:.:+=.:::     
 :::\\\\:.  \\\\:      
  .::::::::.       
     .:::::.       
     .::::::       
     .::::::.      
     ::::::::      
      .....       "
file_sp4_eof : var #1
	static file_sp4_eof + #0, #65535 ; EOF(FFFF)
file_sp5_name : string "sp5" ; 4 bytes
file_sp5_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sp5_cursor : var #1
file_sp5_data : string "
   ..             
  :::             
 ::::.        ..:.
 ::::.      .::::.
 ::::     .::::::.
 .::.    .::::::::
  ..::::::::::::: 
  -=:::::::...... 
  +#.:.*+..       
 \\+-/:\\++/.:      
 =/\\.:*/\\=:.      
./+-\\:/%#\\:.       
::.::::--.:       
 :::::::::.       
  .::::::.        
   .::::.         
   .:::::         
   .::::::        
    ......        "
file_sp5_eof : var #1
	static file_sp5_eof + #0, #65535 ; EOF(FFFF)
;	VT	   ---
file_vt2_name : string "vt2" ; 4 bytes
file_vt2_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_vt2_cursor : var #1
file_vt2_data : string "
                  
                  
                  
                  
                  
                  
                  
                  
                  
   .-==+==-.      
 :*%@@@@@@@%=     
:@@@@%%%%%%@@-    
+*:-=%@#-::-@+    
:*---%@#----@:    
 =@%@@%@@%%@=     
  #@%%%%%%%=      
  -@#.:#%#        
   -=  =*         
                  "
file_vt2_eof : var #1
	static file_vt2_eof + #0, #65535 ; EOF(FFFF)
file_vt3_name : string "vt3" ; 4 bytes
file_vt3_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_vt3_cursor : var #1
file_vt3_data : string "
                  
                  
                  
          :       
       .=-.       
     :*=-     .=
     -*:  ..   .-.
     #+ +#*#+   =%
     *+==%*#@-  -+
    :*:##%*-#: .*%
    ##.#%@%*=.*%+-
   .= :=**-.:=*+. 
  -:   ..  -%+.   
  =.      :%%:    
 -        -+.     
.       .=        
        :-        
       -.         
      .           "
file_vt3_eof : var #1
	static file_vt3_eof + #0, #65535 ; EOF(FFFF)
;	LIZ	   ---
file_rl1b_name : string "rl1b" ; 5 bytes
file_rl1b_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_rl1b_cursor : var #1
file_rl1b_data : string "
                  
        ::.       
      . -:.       
     .-:-:        
     .-:---.      
     :--:----:    
    .-------:--.  
     :------ .--: 
    :::---:-- ---.
  . :=----.:-:---:
  ...::---..-----.
 .... .---. ::-:- 
. ......---  .--: 
  ....  .--:.  .  
 .......  --:     
. ......   :-:    
    .....         
                  
                  "
file_rl1b_eof : var #1
	static file_rl1b_eof + #0, #65535 ; EOF(FFFF)
file_rl2_name : string "rl2" ; 4 bytes
file_rl2_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_rl2_cursor : var #1
file_rl2_data : string "
                  
       .::        
       .:- .      
        :-:-.     
      :---:-.     
    :----:--:     
  .----------.    
 :---.:-----:     
.---. .:---:::    
:---..------=: .  
.---:--:---::...  
 -----::---. .... 
 :-:--:---...... .
  ---::--.  ....  
  .--:--  ....... 
    .::   ...... .
         .....    
                  
                  "
file_rl2_eof : var #1
	static file_rl2_eof + #0, #65535 ; EOF(FFFF)
file_bl1_name : string "bl1" ; 4 bytes
file_bl1_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_bl1_cursor : var #1
file_bl1_data : string "
            ..    
       ...-==     
     :=+++++:     
   -=+++++++...   
 .=++++++++= .... 
 =+-=+++++++=.....
.+=:=+++=+++=.....
:+=*-=+-=U++- ....
-+=#%-+-=+++- ....
-++:-+++U++++.....
=+++++++++++=.....
-++++++=-+++. ....
:=+++++==+++......
:+++-+++++++: ....
.+=-=+++++=-. ... 
 =--++++=:    ... 
 .=+++=:       .  
  -==:            
                  "
file_bl1_eof : var #1
	static file_bl1_eof + #0, #65535 ; EOF(FFFF)
file_bl2_name : string "bl2" ; 4 bytes
file_bl2_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_bl2_cursor : var #1
file_bl2_data : string "
           ..     
       ...-==     
     :=+++++:     
   -=+++++++...   
 .-++++++++= .... 
 =-=+++++=++=.....
.+=.-+=+U-++=.....
:=-#---++-U+- ....
:=-#%::=+U++- ....
-=-.::-=++==+.....
-=--:-//:+-==.....
-=////=+-+=+. ....
:===--++++++......
:+=-:=+==+++: ....
.+=:+++:=+=-. ...
 =-=++++=:    ... 
 .=+++=:       .  
  -==:            
                  "
file_bl2_eof : var #1
	static file_bl2_eof + #0, #65535 ; EOF(FFFF)
;	DLL	   ---
file_dll1_name : string "dll1" ; 5 bytes
file_dll1_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_dll1_cursor : var #1
file_dll1_data : string "
   =*##*.  ::   :+
  *+:..-#.*@@%:-#-
 =+     :@@@*@@%  
 .   .*%#@@@==@+  
     #%@@@@@*%@-  
    :@+@@%@@@@@***
    -*:*@@@%@@@%-:
    .%*@@@@@@@#@# 
   .=@@@@@@@@@==@.
 :**=%@@@@@@@%*+@ 
-#- +%@%@@@@@@@@= 
%  *=+@==%@@@@#.  
%..# -@%*@@@@.*-  
:#%-  =#%%%+*. #  
  **        +-++  
   #:       ##=   
   -.      :*     
           *:     
          .*      "
file_dll1_eof : var #1
	static file_dll1_eof + #0, #65535 ; EOF(FFFF)
;	AT	   ---
file_at1_name : string "at1" ; 4 bytes
file_at1_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_at1_cursor : var #1
file_at1_data : string "
     .::          
    .---:   .:::. 
    :---:  :-----.
   :----  :------:
   :---. :-------.
  .---. :------:. 
  ::::..-:-:::.   
  :-:--::::       
  :----:::::      
 :----::::::.     
 :%@%:-:::--.     
 :=*+---.:--:     
:-:::---::.::     
.:---::---:.      
  ..::--::.       
    :---::.       
   .------:       
   .::::...       "
file_at1_eof : var #1
	static file_at1_eof + #0, #65535 ; EOF(FFFF)
;	GM	   ---
file_gm1_name : string "gm1" ; 4 bytes
file_gm1_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_gm1_cursor : var #1
file_gm1_data : string "
                  
.+#*-         :-. 
+%%%%+      =#%%#-
*%%%%#     *%%%%%*
*%%%%#    *%%%%%%+
+%%%#+:. .#%%%%%%:
:%%%#%%####%%%%%= 
 #%=-#%%*+#%%%#-  
 --  =@*   #%=.   
 =:  *@=   -#     
.*%*##%#:  +#     
+%%%*#*%%##%%+    
+%%#***%%%%%%*    
 =##%%%%%%%%*.    
  :#%%%##**+      
 .#%%%%###%%-     
 :%%%%%%%%%%*     
  +%%%%%%%%*.     
   :+***+=:       "
file_gm1_eof : var #1
	static file_gm1_eof + #0, #65535 ; EOF(FFFF)
;	RV	   ---
file_rv1_name : string "rv1" ; 4 bytes
file_rv1_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_rv1_cursor : var #1
file_rv1_data : string "
    .+        --  
    +%+      *%#: 
   .###     +%#%= 
   :###:   -###%+ 
   :###:  .####%= 
   :###.  +%##%*  
   .##*-::##%#*.  
    **####%##=    
    =+%%+ =%+     
      +%.  *#.    
      =%   -%:-+=.
 .-.  =%   +%*#*+:
:***:.*%+ :*#+.   
:.=+*##########:  
 :**+##*#%##*-*+  
 .=* .=%%*+ -+ -. 
  -=  =####- =.   
      #%%%#-      
     .+*+=.       "
file_rv1_eof : var #1
	static file_rv1_eof + #0, #65535 ; EOF(FFFF)
;	SA	   ---
file_sa1_name : string "sa1" ; 4 bytes
file_sa1_name_padding : var #10 ; 10 de padding para dar 14 bytes de file_name
file_sa1_cursor : var #1
file_sa1_data : string "
 -#-              
 %@%-             
-@@@#             
*@@@%      :===-  
*@@@#    -#@@@@@%-
*@%#*+-.+@@@@@@@@#
*%#%@@@%@@@@@@@@@*
+%%%%@@@@@@@@@@@%.
=@@@@@@@@@%#%%#=. 
=@@@@@@@@@*       
*@@@@@%#%@%       
+%%@#++*#@%       
:#%%@@@@@@*       
*@@@@@@@@#.       
*@@%%@@@*         
 -++*#%@%.        
    *%@@@*        
   .%@@@@%.       
   .=*##+:        "
file_sa1_eof : var #1
	static file_sa1_eof + #0, #65535 ; EOF(FFFF)
;	SALAS ------
file_start_name : string "start" ; 6 bytes
file_start_name_padding : var #8 ; 8 de padding para dar 14 bytes de file_name
file_start_cursor : var #1
file_start_data : string "3072
sm2
0
none

You have been through hell and back,
but now, it's time to atone for your
sins in your past cycles. 
You must find a mate, or die. 
Which direction do you head?

north
north_1_c1
south
south
west
west
east
east
down
down"
file_start_eof : var #1
	static file_start_eof + #0, #65535 ; EOF(FFFF)
file_south_name : string "south" ; 6 bytes
file_south_name_padding : var #8 ; 8 de padding para dar 14 bytes de file_name
file_south_cursor : var #1
file_south_data : string "3072
sm5
2304
at1

You find an explosive slugcat.
They spear on you sight.
You die.

restart
start"
file_south_eof : var #1
	static file_south_eof + #0, #65535 ; EOF(FFFF)
file_west_name : string "west" ; 5 bytes
file_west_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_west_cursor : var #1
file_west_data : string "3072
sm5
2816
gm1

You find a rotund slugcat climbing
a tree. Your arrival scares them and
they fall on you.
You get crushed.

restart
start"
file_west_eof : var #1
	static file_west_eof + #0, #65535 ; EOF(FFFF)
file_east_name : string "east" ; 5 bytes
file_east_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_east_cursor : var #1
file_east_data : string "3072
sm5
3584
rv1

You find a wet slugcat swimming at
the shoreline. You try to get close to
give a better look but a large 
mechanical eel jumps from the water
and closes its hydraulic jaws on you.
You die.

restart
start"
file_east_eof : var #1
	static file_east_eof + #0, #65535 ; EOF(FFFF)
file_down_name : string "down" ; 5 bytes
file_down_name_padding : var #9 ; 9 de padding para dar 14 bytes de file_name
file_down_cursor : var #1
file_down_data : string "3072
sm5
768
sa1

Tou arrive at a weird dark place,
there you find a green slugcat.
The slugcat open its eyes, which glow
with pupils that look like crosses2231a
321389423fnYOU ASCENDybedWS&r734bdfhvfy
dwas nDUI278yed8uabjB YdgysbAJK8iwu89h2

restart
start"
file_down_eof : var #1
	static file_down_eof + #0, #65535 ; EOF(FFFF)
file_north_1_c1_name : string "north_1_c1" ; 11 bytes
file_north_1_c1_name_padding : var #3 ; 3 de padding para dar 14 bytes de file_name
file_north_1_c1_cursor : var #1
file_north_1_c1_data : string "3072
sm2
0
none

You trek to the north, towards
a land of towering structures 
that pierce the heavens.

...
north_1_c2"
file_north_1_c1_eof : var #1
	static file_north_1_c1_eof + #0, #65535 ; EOF(FFFF)
file_north_1_c2_name : string "north_1_c2" ; 11 bytes
file_north_1_c2_name_padding : var #3 ; 3 de padding para dar 14 bytes de file_name
file_north_1_c2_cursor : var #1
file_north_1_c2_data : string "3072
sm2
0
none

You spot a strange slugcat climbing one
of the towers, unlike any you've seen
before. It has no mouth with which to
eat or speak with, and is able to 
generate spiky bone-like protrusions 
from its tail.

...
north_1_c3"
file_north_1_c2_eof : var #1
	static file_north_1_c2_eof + #0, #65535 ; EOF(FFFF)
file_north_1_c3_name : string "north_1_c3" ; 11 bytes
file_north_1_c3_name_padding : var #3 ; 3 de padding para dar 14 bytes de file_name
file_north_1_c3_cursor : var #1
file_north_1_c3_data : string "3072
sm2
0
none

It does not react when it notices you,
giving you a good view of it. 
Fascinating.
Do you approach it?

no
north_1a
yes
north_2"
file_north_1_c3_eof : var #1
	static file_north_1_c3_eof + #0, #65535 ; EOF(FFFF)
file_north_1a_name : string "north_1a" ; 9 bytes
file_north_1a_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_1a_cursor : var #1
file_north_1a_data : string "3072
sm6
1280
sp2

You decide to wait and watch it more.
It simply sits there and generates
more spikes out of its tail, building
and arsenal of weaponry. It must be
preparing for a big hunt. 
You are impressed.

Grab some spears to assist on the hunt
north_1b"
file_north_1a_eof : var #1
	static file_north_1a_eof + #0, #65535 ; EOF(FFFF)
file_north_1b_name : string "north_1b" ; 10 bytes
file_north_1b_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_1b_cursor : var #1
file_north_1b_data : string "3072
sm5
1280
sp2

This slugcat could be your hunting
buddy! You grab a spear off the ground
But as soon as you touch it,
the slugcat finally reacts to your
presence, unloading their arsenal
on you. You couldn't dodge them all.

restart
start"
file_north_1b_eof : var #1
	static file_north_1b_eof + #0, #65535 ; EOF(FFFF)
file_north_2_name : string "north_2" ; 8 bytes
file_north_2_name_padding : var #6 ; 6 de padding para dar 14 bytes de file_name
file_north_2_cursor : var #1
file_north_2_data : string "3072
sm10
1280
sp2

You approach the strange slugcat,
watching as it climbs on the tower.
You're not sure what it is doing,
maybe you could have a conversation.
You call out to it, but it doesn't
react, you try to get its attention.

throw a rock at it
north_3"
file_north_2_eof : var #1
	static file_north_2_eof + #0, #65535 ; EOF(FFFF)
file_north_3_name : string "north_3" ; 8 bytes
file_north_3_name_padding : var #6 ; 6 de padding para dar 14 bytes de file_name
file_north_3_cursor : var #1
file_north_3_data : string "3072
sm10
1280
sp2b

The rock hits their head,
and they stare back annoyed.
>Can't you tell I'm trying to ignore
you? I already had to suffer being 
the protagonist of the first MS dating
sim, please don't drag me to this.<

wat...?
north_3b"
file_north_3_eof : var #1
	static file_north_3_eof + #0, #65535 ; EOF(FFFF)
file_north_3b_name : string "north_3b" ; 9 bytes
file_north_3b_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_3b_cursor : var #1
file_north_3b_data : string "3072
sm10
1280
sp2b

The other slugcat looks frustrated.
>Who even decided to make an assembly
port of this? What will people think
when they see this as a uni project?
Look, just come over here and kiss me
already and let's get this over with.<

kiss u?? but you don't have a mouth...
north_4"
file_north_3b_eof : var #1
	static file_north_3b_eof + #0, #65535 ; EOF(FFFF)
file_north_4_name : string "north_4" ; 8 bytes
file_north_4_name_padding : var #6 ; 6 de padding para dar 14 bytes de file_name
file_north_4_cursor : var #1
file_north_4_data : string "3072
sm7
1280
sp2b

>I used to have a mouth! Back on the
first MS version. I used to be able to
swallow and regurgitate spears...
isn't that romantic?<
You blush. >yea... that is certainly
something<

how are u even talking to me rn?
north_5"
file_north_4_eof : var #1
	static file_north_4_eof + #0, #65535 ; EOF(FFFF)
file_north_5_name : string "north_5" ; 8 bytes
file_north_5_name_padding : var #6 ; 6 de padding para dar 14 bytes de file_name
file_north_5_cursor : var #1
file_north_5_data : string "3072
sm7
1280
sp1a

>What?? Oh... I don't need a mouth for
that. I vocalize out of my tail.<
You stare at the holes on their tail
both fascinated and repulsed by their
questionable biology.

approach the tail
north_6a
share in their frustration
north_6b"
file_north_5_eof : var #1
	static file_north_5_eof + #0, #65535 ; EOF(FFFF)
file_north_6a_name : string "north_6a" ; 9 bytes
file_north_6a_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_6a_cursor : var #1
file_north_6a_data : string "3072
sm9
1280
sp2

You lean your mouth towards their tail
and they immediately jump back.
>Eww, what do you think you're trying
to do?< You continue after them until
they're backed into the edge 
of the platform.

go for the kill
north_6a2"
file_north_6a_eof : var #1
	static file_north_6a_eof + #0, #65535 ; EOF(FFFF)
file_north_6a2_name : string "north_6a2" ; 10 bytes
file_north_6a2_name_padding : var #4 ; 4 de padding para dar 14 bytes de file_name
file_north_6a2_cursor : var #1
file_north_6a2_data : string "3072
sm5
1280
sp2

As you approach, sharp needles suddenly
erupt out of every hole in their tail,
piercing through your body in multiple
places. 
You die pretty much immediately.

restart
start"
file_north_6a2_eof : var #1
	static file_north_6a2_eof + #0, #65535 ; EOF(FFFF)
file_north_6b_name : string "north_6b" ; 9 bytes
file_north_6b_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_6b_cursor : var #1
file_north_6b_data : string "3072
sm2
1280
sp1

>i get how it feels to be nerfed<
You pat spearmaster on the shoulder
>i gotta eat so much food, its dumb<
>yeah, i guess you have it rough too.
These developers hate us.< Spearmaster
looks at you with deep understanding

give spearmaster a hug
north_7"
file_north_6b_eof : var #1
	static file_north_6b_eof + #0, #65535 ; EOF(FFFF)
file_north_7_name : string "north_7" ; 8 bytes
file_north_7_name_padding : var #6 ; 6 de padding para dar 14 bytes de file_name
file_north_7_cursor : var #1
file_north_7_data : string "3072
sm9
1280
sp3

>it's ok, we slugcats need to stick 
together. ilu bby <3<
>Thank you, I needed to hear that...
speaking of nerfed, I'm hungry and 
need to find nutrients.< Spearmaster
generates a fresh spear from their tail

lets go search for food
north_8
wat about me?
north_10
i got eggs on the house
north_9"
file_north_7_eof : var #1
	static file_north_7_eof + #0, #65535 ; EOF(FFFF)
file_north_8_name : string "north_8" ; 8 bytes
file_north_8_name_padding : var #6 ; 6 de padding para dar 14 bytes de file_name
file_north_8_cursor : var #1
file_north_8_data : string "3072
sm9
1280
sp4

You and spearmaster climb to the roof
of the tower in search of food. You
overlook the canopies of structures out
in the distance. The view is industrial
but beautiful. You lean your head
against spearmaster's shoulder.

this is nice. <3
north_8b"
file_north_8_eof : var #1
	static file_north_8_eof + #0, #65535 ; EOF(FFFF)
file_north_8b_name : string "north_8b" ; 9 bytes
file_north_8b_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8b_cursor : var #1
file_north_8b_data : string "3072
sm11
1280
sp5

A loud noise fires from the sky and
a large harpoon immediately skewers
spearmaster's chest cavity. Their 
corpse is hoisted up into the sky by
a string.

what?!?!
north_8c"
file_north_8b_eof : var #1
	static file_north_8b_eof + #0, #65535 ; EOF(FFFF)
file_north_8c_name : string "north_8c" ; 9 bytes
file_north_8c_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8c_cursor : var #1
file_north_8c_data : string "3072
sm3
2816
vt3

>Eyy, I'm the vulture king and this is
our territory. Get lost, buddy.<

u just killed my boyfriend!
north_8d"
file_north_8c_eof : var #1
	static file_north_8c_eof + #0, #65535 ; EOF(FFFF)
file_north_8d_name : string "north_8d" ; 9 bytes
file_north_8d_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8d_cursor : var #1
file_north_8d_data : string "3072
sm3
3584
vt2

>You got a problem with that? Our boss
here does what he wants. We rule this
canopy.<

i'll get my revenge!!
north_8e"
file_north_8d_eof : var #1
	static file_north_8d_eof + #0, #65535 ; EOF(FFFF)
file_north_8e_name : string "north_8e" ; 9 bytes
file_north_8e_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8e_cursor : var #1
file_north_8e_data : string "3072
sm3
255
vt2

>Raising your voice, eh?! We'll teach
you a lesson you won't forget. You won't
forget the wrath of the vulture gang.<

grab a spear off the ground.
north_8f"
file_north_8e_eof : var #1
	static file_north_8e_eof + #0, #65535 ; EOF(FFFF)
file_north_8f_name : string "north_8f" ; 9 bytes
file_north_8f_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8f_cursor : var #1
file_north_8f_data : string "2304
rl1b
2816
vt3

Before you get a chance to react, red
balls of spit begin to pelt the 
vultures. >You vultures think you rule
this canopy? Not when I'm around.<
The red lizard makes quick chase, and 
the three vultures decide to escape.

threaten the red lizard with your spear
north_8g"
file_north_8f_eof : var #1
	static file_north_8f_eof + #0, #65535 ; EOF(FFFF)
file_north_8g_name : string "north_8g" ; 9 bytes
file_north_8g_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8g_cursor : var #1
file_north_8g_data : string "3072
sm3
2304
rl2

>Woah, wait, that's not necessary. I'm
not here to eat you.< >i'm used to 
dealing with red lizards, dont think
u can pull anything on me, foul beast!<
>No, no, I just wanted to introduce you
to my friend. They're kinda of shy.<

sure i guess??
north_8h"
file_north_8g_eof : var #1
	static file_north_8g_eof + #0, #65535 ; EOF(FFFF)
file_north_8h_name : string "north_8h" ; 9 bytes
file_north_8h_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8h_cursor : var #1
file_north_8h_data : string "3072
sm8
1280
none

The red lizard runs off to get their
friend like a good wingman.

what is even happening right now
north_8i"
file_north_8h_eof : var #1
	static file_north_8h_eof + #0, #65535 ; EOF(FFFF)
file_north_8i_name : string "north_8i" ; 9 bytes
file_north_8i_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8i_cursor : var #1
file_north_8i_data : string "3072
sm8
3584
bl1

>Hello it's ... nice to meet you....??<
>uh, hey, wats up?<
>I, uh ... ummm.... I just think you're
like.... pretty cute ...<
>oh. thanks.<

so, do u come here often?
north_8j"
file_north_8i_eof : var #1
	static file_north_8i_eof + #0, #65535 ; EOF(FFFF)
file_north_8j_name : string "north_8j" ; 9 bytes
file_north_8j_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8j_cursor : var #1
file_north_8j_data : string "3072
sm8
3584
bl2

>Hahaha.... oh yeah.... this is like my
hang out spot! uhhh, oh my gosh....<
>are u okay?<>Ohh...i'm just nervous!<
>it's fine, deep breaths, u dont need 
to be nervous<>Oh woww, that's so 
understanding of you! I.... love you.<

what??
north_8k"
file_north_8j_eof : var #1
	static file_north_8j_eof + #0, #65535 ; EOF(FFFF)
file_north_8k_name : string "north_8k" ; 9 bytes
file_north_8k_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8k_cursor : var #1
file_north_8k_data : string "3072
sm11
1280
none

Before you get the chance to say
anything else, a tentacle slaps the
back of the lizard and pulls them off 
the edge of the tower. You hear a faint
slurping sound before more tentacles 
emerge over the edge.

panic
north_8l"
file_north_8k_eof : var #1
	static file_north_8k_eof + #0, #65535 ; EOF(FFFF)
file_north_8l_name : string "north_8l" ; 9 bytes
file_north_8l_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8l_cursor : var #1
file_north_8l_data : string "3072
sm3
1024
dll1

This situation has gotten out of
control. Too much is happening at once.
>Glooodgldloolldloo-ooololglopglopp!!<
>thats not an appropriate thing to say<
>Glglglgl-ooooo-loplplplpl!<>this is an
all ages dating sim, watch your mouth.<

throw your spear at the creature
north_8m"
file_north_8l_eof : var #1
	static file_north_8l_eof + #0, #65535 ; EOF(FFFF)
file_north_8b_name : string "north_8m" ; 9 bytes
file_north_8b_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_8m_cursor : var #1
file_north_8m_data : string "3072
sm5
1024
dll1

It has little effect, and the creature
quickly ensares you in its tentacles.
You are dragged into its rotten maw 
where your body is dissolved away.

restart
start"
file_north_8m_eof : var #1
	static file_north_8m_eof + #0, #65535 ; EOF(FFFF)
file_north_9_name : string "north_9" ; 8 bytes
file_north_9_name_padding : var #6 ; 6 de padding para dar 14 bytes de file_name
file_north_9_cursor : var #1
file_north_9_data : string "3072
sm5
1280
none

You pull out your trusty egg that
you carry with you all the time.
Spearmaster throws a spear at it,
and the egg immediately distorts
the space around it. You both get
sucked in the black hole and die.

restart
start"
file_north_9_eof : var #1
	static file_north_9_eof + #0, #65535 ; EOF(FFFF)
file_north_10_name : string "north_10" ; 9 bytes
file_north_10_name_padding : var #5 ; 5 de padding para dar 14 bytes de file_name
file_north_10_cursor : var #1
file_north_10_data : string "3072
sm4
1280
sp2b

>Hmm? you need food too?<
>no i mean ... u can siphon my 
nutrients... with ur spears...<
>WHAT??<
>it's ok-< >You want me to stab you?
You'll die.<

please
north_10b"
file_north_10_eof : var #1
	static file_north_10_eof + #0, #65535 ; EOF(FFFF)
file_north_10b_name : string "north_10b" ; 8 bytes
file_north_10b_name_padding : var #4 ; 4 de padding para dar 14 bytes de file_name
file_north_10b_cursor : var #1
file_north_10b_data : string "3072
sm5
1280
sp2b

>Man, whatever, I don't have time
for this, the rain is coming.<
Spearmaster chucks the spear at 
your torso. It's not a pleasant
experience. Your nutrients leave
your body.

restart
start"
file_north_10b_eof : var #1
	static file_north_10b_eof + #0, #65535 ; EOF(FFFF)
end_of_file_system : var #1
	static end_of_file_system + #0, #65534 ; EOFS (FFFE), marca que nao ha mais arquivos no file system
;--------

block_addr_pos : var #1
dynamic_memory_block : var # 1200
block_end_addr_pos : var #1

;---- Inicio do Programa Principal -----
main:
	; iniciando memoria dinamica ----
	loadn r7, #dynamic_memory_block ; addr inicial
	loadn r6, #block_end_addr_pos ; addr final
	call mem_move
	call mem_init
	; iniciando resolucoes da tela ----
	loadn r7, #40
	call drawing_screen_width
	; iniciando file system ----
	loadn r7, #fs_start
	call file_system_setup
	; ----
	; iniciar processos
	call text_prompt_start
	call dating_sim_start
main_while_true:
	; loop dos processos
	call text_prompt_loop
	call dating_sim_loop
	jmp main_while_true
	breakp
	halt

;---- PROMPT DE TEXTO ----
text_prompt_cursor : var #1
text_prompt_string_pointer : var #1
text_prompt_start:
	push r6
	push r7
	
	loadn r7, #41 ; tamanho do buffer de string
	call mem_calloc ; comeca com a string toda vazia

	loadn r6, #text_prompt_string_pointer
	storei r6, r7 ; grava em text_prompt_string_pointer o pointer da string alocada
	
	pop r7
	pop r6
	rts
text_prompt_last_char : var #1
text_prompt_loop:
	push r0 ; 0
	push r1 ; char c
	push r2 ; cursor
	push r3 ; char * s
	push r4 ; constantes quando necessario
	push r5 ; constantes quando necessario
	push r6 ; argumento e saida de rotinas
	push r7 ; argumento e saida de rotinas
	
	loadn r0, #0
	load r2, text_prompt_cursor
	load r3, text_prompt_string_pointer
	
	call get_char	
	; r7 tem o char, colocar em r1
	mov r1, r7
	
	text_prompt_loop_return_if_same_char_check:
		load r4, text_prompt_last_char
		cmp r1, r4
		jne text_prompt_loop_return_if_same_char_end ; c == last_char
	text_prompt_loop_return_if_same_char:
		jmp text_prompt_loop_return ; retornar mais cedo pois estamos com o botao segurado
	text_prompt_loop_return_if_same_char_end:
	
	text_prompt_loop_is_displayable_char_check:
		loadn r4, #40
		cmp r2, r4
		jeg text_prompt_loop_is_backspace_check ; cursor >= 40, alem da string
		loadn r4, #31
		loadn r5, #127
		cmp r1, r4
		jle text_prompt_loop_is_backspace_check
		cmp r1, r5
		jeg text_prompt_loop_is_backspace_check ; c <= 31 || c >= 127, nao eh char printavel
	text_prompt_loop_is_displayable_char:
		add r3, r3, r2
		storei r3, r1 ; *(s + cursor) = c
		inc r2
		store text_prompt_cursor, r2 ; grava o valor do cursor na memoria
		
		load r7, text_prompt_string_pointer
		call update_string_display
		
		jmp text_prompt_loop_is_displayable_char_end
	text_prompt_loop_is_backspace_check:
		loadn r4, #8
		cmp r1, r4
		jne text_prompt_loop_is_enter_check ; c == 8, eh o backspace
	text_prompt_loop_is_backspace:
		loadn r4, #1
		sub r2, r2, r4 ; subtracao de u_int (nao da underflow)
		store text_prompt_cursor, r2 ; grava o valor do cursor na memoria
		
		add r3, r3, r2
		storei r3, r0 ; *(s + cursor) = '\0'
		load r7, text_prompt_string_pointer

		call update_string_display
		
		jmp text_prompt_loop_is_displayable_char_end
	text_prompt_loop_is_enter_check:
		loadn r4, #13
		cmp r1, r4
		jne text_prompt_loop_is_displayable_char_end ; c == 13, eh o '\r' (teclado WHYYYYY)		
	text_prompt_loop_is_enter:
		load r7, text_prompt_string_pointer
		call send_string ; envia a string para o outro processo
		; alocar novamente o espaco para o text_promp_buffer
		loadn r7, #41 ; tamanho do buffer de string
		call mem_calloc
		loadn r6, #text_prompt_string_pointer
		store text_prompt_string_pointer, r7 ; grava em text_prompt_string_pointer o pointer da string alocada

		store text_prompt_cursor, r0 ; resetar o cursor para 0

		call update_string_display
		; TODO TODO TODO
		
	text_prompt_loop_is_displayable_char_end:

text_prompt_loop_return:
	store text_prompt_last_char, r1 ; last_char = c
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
; rotinas do prompt de texto
set_canvas_for_update_string_display:
	push r6
	push r7
	; configurando o canvas do update_string_display ----
	; setar o tamanho do canvas
	loadn r7, #40
	loadn r6, #1
	call canvas_set_resolution
	; setar a posicao da origem do canvas
	loadn r7, #0
	loadn r6, #29
	call canvas_set_origin
	; setar a posicao inicial do cursor do canvas
	loadn r7, #0
	loadn r6, #0
	call canvas_move_cursor_xy
	; ----
	pop r7
	pop r6
	rts
update_string_display:
	push r6 ; argumento de funcs
	push r7 ; ponteiro da string
	call set_canvas_for_update_string_display
	call canvas_clear
	; r7
	loadn r6, #0 ; branco
	call print_string
	; ----
	pop r7
	pop r6
	rts

send_string:
	push r6
	push r7 ; ponteiro da string

	;loadn r7, #file_name_start
	;call dating_sim_parse_file

	call dating_sim_receive_option
	
	call mem_free

	pop r7
	pop r6
	rts
; fim do prompt de texto

;---- DATING SIM ----
; rotinas do rpg de texto
; status: rendering, waiting
; rendering -> renderizando a imagem/texto, fazer uma linha por loop para nao bloquear muito o text_prompt
; waiting -> esperando a saida o text_prompt, quando receber muda, faz o processamento e muda para rendering

file_name_test : string "sm2"
file_name_test_2 : string "at1"
file_name_start : string "start"
dating_sim_start:
	push r7

	;loadn r7, #file_name_test
	;call reset_canvas_character_1
	;call file_open
	;store character_1_file, r7

	;loadn r7, #file_name_test_2
	;call reset_canvas_character_2
	;call file_open
	;store character_2_file, r7

	loadn r7, #file_name_start
	call dating_sim_parse_file

	pop r7
	rts
dating_sim_loop:
	call display_character_1
	call display_character_2
	call display_text
	call display_options
	rts

; logica de parse de arquivo e entrada de dado ---------
dating_sim_receive_option:
	push r0 ; 0
	push r3 ; position
	push r4 ; size
	push r5 ; options_vector
	push r6 ; char * option = options_vector[position]
	push r7 ; char * choosen_option

	loadn r0, #0
	loadn r3, #0
	load r4, options_vector_size
	loadn r5, #options_vector
dating_sim_receive_option_loop_check: ; while(position < size && string_starts_with(choosen_option, option) != 0)
	cmp r3, r4
	jeg dating_sim_receive_option_loop_end
	
	loadi r6, r5 ; options_vector[position]
	call string_starts_with
	cmp r6, r0
	jeq dating_sim_receive_option_loop_end
dating_sim_receive_option_loop:
	inc r5
	inc r5
	inc r3
	inc r3; position += 2
	jmp dating_sim_receive_option_loop_check
dating_sim_receive_option_loop_end:
	; se estamos aqui ou acabamos as opcoes (position >= size) ou temos a opcao que queremos em position+1
dating_sim_receive_option_valid_selection_check:
	cmp r3, r4
	jeg dating_sim_receive_option_valid_selection_end
dating_sim_receive_option_valid_selection:
	inc r5
	loadi r7, r5; options_vector[position + 1]
	call dating_sim_parse_option ; temos opcao valida, passar ela para o parse_option
dating_sim_receive_option_valid_selection_end:
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r0
	rts

dating_sim_parse_option: ; transforma a opcao escolhida em um dating_sim_parse_file ou em outra coisa
	push r7

	call dating_sim_parse_file

	pop r7
	rts
dating_sim_parse_file:
	push r0 ; 0
	push r1 ; FILE *
	push r2 ; string alocada
	push r5 ; arg de funcao / char *
	push r6 ; arg de funcao
	push r7 ; file_name, e arg de funcoes
	call file_open
	cmp r7, r0
	jeq dating_sim_parse_file_return ; se o arquivo nao existe (NULL) retornar mais cedo
	mov r1, r7 ; guarda o ponteiro de arquivo em r1

	loadn r7, #15
	call mem_calloc ; alocou espaco para string de 14 chars (tamanho maximo do file_name)
	mov r5, r7 ; char *
	
	; lendo cor personagem 1
	loadn r6, #14 ; tamanho maximo para ler
	; r5, char *
	mov r7, r1 ; FILE *
	call file_read_string ; le a cor para a imagem do personagem 1
	mov r7, r5 ; char *
	call convert_string_base_10_to_int ; string -> int/cor
	store character_1_color, r7
	; lendo personagem 1
	loadn r6, #14 ; tamanho maximo para ler
	; r5, char *
	mov r7, r1 ; FILE *
	call file_read_string ; le o nome do arquivo que contem a imagem do personagem 1
	
	call reset_canvas_character_1
	mov r7, r5 ; char *
	call file_open
	store character_1_file, r7 ; reseta o canvas de char 1, abre o arquivo dele e seta a variavel que vai conter esse ponteiro de arquivo

	; lendo cor personagem 2
	loadn r6, #14 ; tamanho maximo para ler
	; r5, char *
	mov r7, r1 ; FILE *
	call file_read_string ; le a cor para a imagem do personagem 1
	mov r7, r5 ; char *
	call convert_string_base_10_to_int ; string -> int/cor
	store character_2_color, r7
	; lendo personagem 2
	loadn r6, #14 ; tamanho maximo para ler, 
	; r5, char *
	mov r7, r1 ; FILE *
	call file_read_string ; le o nome do arquivo que contem a imagem do personagem 2

	call reset_canvas_character_2
	mov r7, r5 ; char *
	call file_open
	store character_2_file, r7 ; reseta o canvas de char 2, abre o arquivo dele e seta a variavel que vai conter esse ponteiro de arquivo
	; pulando de ler personagem para ler texto
	; char *
	loadn r6, #14 ; tamanho maximo para ler
	mov r7, r1 ; FILE *
	call file_read_string ; le uma string vazia
	mov r7, r5
	call mem_free ; nao precisamos mais da string desse tamanho, dealocando ...
	; lendo texto
	call reset_canvas_text
	dating_sim_parse_file_text_loop:
		loadn r7, #41
		call mem_calloc
		mov r5, r7 ; char *
		loadn r6, #40 ; tamanho maximo para ler
		mov r7, r1 ; FILE *
		call file_read_string ; le linha do texto (ou parte dela) 
		mov r7, r5
		call add_to_text_lines
	dating_sim_parse_file_text_check:
		loadi r5, r5 ; r5 = primeiro char de char *
		cmp r5, r0
		jne dating_sim_parse_file_text_loop ; r5 != '\0', ou seja, continuar ate encontrar uma string vazia
	dating_sim_parse_file_text_end:
	; lendo opcoes
	call reset_canvas_options
	dating_sim_parse_file_options_loop:
		loadn r7, #41
		call mem_calloc
		mov r5, r7 ; char *
		loadn r6, #40 ; tamanho maximo para ler
		mov r7, r1 ; FILE *
		call file_read_string ; em loop par le opcao para o jogador, em loop impar le a acao da opcao (ie ir para outro arquivo) 
		mov r7, r5
		call add_to_options_vector
	dating_sim_parse_file_options_check:
		loadi r5, r5 ; r5 = primeiro char de char *
		cmp r5, r0
		jne dating_sim_parse_file_options_loop ; r5 != '\0', ou seja, continuar ate encontrar uma string vazia
	dating_sim_parse_file_options_end:
	; fechando o arquivo, nao precisamos mais dele
	mov r7, r1
	call file_close
	; IMPORTANTE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	call mem_defrag ; esse eh o local do codigo que mais faz alocacao e dealocacao, entao para sanitanizar bem a memoria dinamica desfragmentamos aqui 
dating_sim_parse_file_return:
	pop r7
	pop r6
	pop r5
	pop r2
	pop r1
	pop r0
	rts
; logica de desenho ---------
; desenhar o personagem 1 ----
character_1_line : var #19
character_1_canvas_cursor : var #1
character_1_file : var #1
character_1_color : var #1
setup_canvas_character_1:
	push r6
	push r7
	; configurando o canvas do display_character_1 ----
	; setar o tamanho do canvas
	loadn r7, #18
	loadn r6, #18
	call canvas_set_resolution
	; setar a posicao da origem do canvas
	loadn r7, #0
	loadn r6, #0
	call canvas_set_origin
	; setar a posicao anterior do cursor do canvas
	load r7, character_1_canvas_cursor
	call canvas_move_cursor
	; ----
	pop r7
	pop r6
	rts

reset_canvas_character_1:
	push r0 ; 0
	push r7 ; character_1_file

	loadn r0, #0
	store character_1_canvas_cursor, r0
reset_canvas_character_1_close_file_check:
	load r7, character_1_file
	cmp r7, r0
	jeq reset_canvas_character_1_close_file_end ; se nao temos arquivos (NULL) nao fechar
reset_canvas_character_1_close_file:
	call file_close
reset_canvas_character_1_close_file_end:
	store character_1_file, r0 ; guarda que nao temos mais arquivo

	pop r7
	pop r0
	rts
display_character_1:
	push r0 ; 0
	push r1 ; character_1_canvas_cursor 
	push r5 ; character_1_line
	push r6 ; resolution em x e resultado do file_read_string
	push r7 ; character_1_file e character_1_line

	loadn r0, #0
	load r7, character_1_file
	call setup_canvas_character_1
display_character_1_file_not_null_check:
	cmp r7, r0
	jeq display_character_1_file_not_null_end
display_character_1_file_not_null:
	; r7 = character_1_file
	loadn r6, #18
	loadn r5, #character_1_line
	call file_read_string
	cmp r6, r0
	jeq display_character_1_file_not_null_end ; if(result == 0), chegamos no EOF, retornar agora
	mov r7, r5 ; r7 = character_1_line
	load r6, character_1_color ; r6 = character_1_color
	call print_string
	load r1, canvas_cursor_pos
	store character_1_canvas_cursor, r1 ; salva a ultima posicao do cursor desse canvas
display_character_1_file_not_null_end:
	pop r7
	pop r6
	pop r5
	pop r1
	pop r0
	rts
; desenhar o personagem 2 ----
character_2_line : var #19
character_2_canvas_cursor : var #1
character_2_file : var #1
character_2_color : var #1
setup_canvas_character_2:
	push r6
	push r7
	; configurando o canvas do display_character_2 ----
	; setar o tamanho do canvas
	loadn r7, #18
	loadn r6, #18
	call canvas_set_resolution
	; setar a posicao da origem do canvas
	loadn r7, #22
	loadn r6, #0
	call canvas_set_origin
	; setar a posicao anterior do cursor do canvas
	load r7, character_2_canvas_cursor
	call canvas_move_cursor
	; ----
	pop r7
	pop r6
	rts
reset_canvas_character_2:
	push r0 ; 0
	push r7 ; character_2_file
	loadn r0, #0

	store character_2_canvas_cursor, r0
reset_canvas_character_2_close_file_check:
	load r7, character_2_file
	cmp r7, r0
	jeq reset_canvas_character_2_close_file_end ; se nao temos arquivos (NULL) nao fechar
reset_canvas_character_2_close_file:
	call file_close
reset_canvas_character_2_close_file_end:
	store character_2_file, r0 ; guarda que nao temos mais arquivo

	pop r7
	pop r0
	rts
display_character_2:
	push r0 ; 0
	push r1 ; character_2_canvas_cursor 
	push r5 ; character_2_line
	push r6 ; resolution em x e resultado do file_read_string
	push r7 ; character_2_file e character_2_line

	loadn r0, #0
	load r7, character_2_file
	call setup_canvas_character_2
display_character_2_file_not_null_check:
	cmp r7, r0
	jeq display_character_2_file_not_null_end
display_character_2_file_not_null:
	; r7 = character_2_file
	loadn r6, #18
	loadn r5, #character_2_line
	call file_read_string
	cmp r6, r0
	jeq display_character_2_file_not_null_end ; if(result == 0), chegamos no EOF, retornar agora
	mov r7, r5 ; r7 = character_2_line
	load r6, character_2_color ; r6 = character_2_color
	call print_string
	load r1, canvas_cursor_pos
	store character_2_canvas_cursor, r1 ; salva a ultima posicao do cursor desse canvas
display_character_2_file_not_null_end:
	pop r7
	pop r6
	pop r5
	pop r1
	pop r0
	rts
; desenhar o texto ----
text_lines : var #6
text_lines_size : var #1
text_lines_max_size : var #1
	static text_lines_max_size + #0, #6
; adicionar e dar free no vetor de strings --
add_to_text_lines:
	push r0 ; max_size e text_lines
	push r1 ; size
	push r7 ; char * s (texto de entrada)
add_to_text_lines_not_full:
	load r1, text_lines_size
	load r0, text_lines_max_size
	cmp r1, r0
	jeg add_to_text_lines_full
add_to_text_lines_not_full_check:
	loadn r0, #text_lines
	add r0, r0, r1 ; text_lines[size]
	storei r0, r7 ; text_lines[size] = s
	inc r1
	store text_lines_size, r1
	jmp add_to_text_lines_not_full_end
add_to_text_lines_full:
	call mem_free ; recebemos a string, mas nao vamos usar, entao dealocar
add_to_text_lines_not_full_end:
	pop r7
	pop r1
	pop r0
	rts

free_text_lines:
	push r0; 0
	push r1; size
	push r2 ; text_lines + size
	push r7 ; text_lines[size]
	
	loadn r0, #0
	load r1, text_lines_size
free_text_lines_loop_check:
	cmp r1, r0
	jel free_text_lines_loop_end
free_text_lines_loop:
	dec r1
	loadn r2, #text_lines
	add r2, r2, r1
	loadi r7, r2
	call mem_free ; libera a string do vetor de string
	jmp free_text_lines_loop_check
free_text_lines_loop_end:
	store text_lines_size, r1
	pop r7
	pop r2
	pop r1
	pop r0
	rts
; --
text_canvas_cursor : var #1
text_lines_current_line : var #1
setup_canvas_text:
	push r6
	push r7
	; configurando o canvas do display_text ----
	; setar o tamanho do canvas
	loadn r7, #40
	loadn r6, #6
	call canvas_set_resolution
	; setar a posicao da origem do canvas
	loadn r7, #0
	loadn r6, #18
	call canvas_set_origin
	; setar a posicao anterior do cursor do canvas
	load r7, text_canvas_cursor
	call canvas_move_cursor
	; ----
	pop r7
	pop r6
	rts
reset_canvas_text:
	push r0 ; 0
	loadn r0, #0
	store text_canvas_cursor, r0
	store text_lines_current_line, r0

	call free_text_lines

	call setup_canvas_text
	call canvas_clear

	pop r0
	rts

display_text:
	push r0 ; text_lines_size
	push r1 ; text_canvas_cursor
	push r2 ; text_lines_current_line
	push r6 ; color
	push r7 ; text_lines[text_lines_current_line]

	load r0, text_lines_size
	load r2, text_lines_current_line
	call setup_canvas_text
display_text_lines_left_check:
	cmp r2, r0
	jeg display_text_lines_left_end
display_text_lines_left:
	loadn r7, #text_lines
	add r7, r7, r2 
	loadi r7, r7; text_lines[text_lines_current_line]
	loadn r6, #1536 ; r6 = amarelo
	call print_string

	loadn r7, #10 ; \n
	call print_char ; pular uma linha, pois cada 40 chars eh uma linha completa, ou acaba antes, e precisa de \n

	inc r2
	store text_lines_current_line, r2 ; text_lines_current_line++

	load r1, canvas_cursor_pos
	store text_canvas_cursor, r1 ; salva a ultima posicao do cursor desse canvas
display_text_lines_left_end:
	pop r7
	pop r6
	pop r2
	pop r1
	pop r0
	rts

; desenhar as opcoes ----
options_vector : var #10
options_vector_size : var #1
options_vector_max_size : var #1
	static options_vector_max_size + #0, #10
; adicionar e dar free no vetor de strings --
add_to_options_vector:
	push r0 ; max_size e options_vector
	push r1 ; size
	push r7
add_to_options_vector_not_full:
	load r1, options_vector_size
	load r0, options_vector_max_size
	cmp r1, r0
	jeg add_to_options_vector_full
add_to_options_vector_not_full_check:
	loadn r0, #options_vector
	add r0, r0, r1 ; options_vector[size]
	storei r0, r7 ; options_vector[size] = s
	inc r1
	store options_vector_size, r1
	jmp add_to_options_vector_not_full_end
add_to_options_vector_full:
	call mem_free ; recebemos a string, mas nao vamos usar, entao dealocar
add_to_options_vector_not_full_end:
	pop r7
	pop r1
	pop r0
	rts

free_options_vector:
	push r0; 0
	push r1; size
	push r2 ; options_vector + size
	push r7 ; options_vector[size]
	
	loadn r0, #0
	load r1, options_vector_size
free_options_vector_loop_check:
	cmp r1, r0
	jel free_options_vector_loop_end
free_options_vector_loop:
	dec r1
	loadn r2, #options_vector
	add r2, r2, r1
	loadi r7, r2
	call mem_free ; libera a string do vetor de string
	jmp free_options_vector_loop_check
free_options_vector_loop_end:
	store options_vector_size, r1
	pop r7
	pop r2
	pop r1
	pop r0
	rts
; --
options_canvas_cursor : var #1
options_vector_current_option : var #1
setup_canvas_options:
	push r6
	push r7
	; configurando o canvas do display_options ----
	; setar o tamanho do canvas
	loadn r7, #40
	loadn r6, #5
	call canvas_set_resolution
	; setar a posicao da origem do canvas
	loadn r7, #0
	loadn r6, #24
	call canvas_set_origin
	; setar a posicao anterior do cursor do canvas
	load r7, options_canvas_cursor
	call canvas_move_cursor
	; ----
	pop r7
	pop r6
	rts
reset_canvas_options:
	push r0 ; 0
	loadn r0, #0

	store options_canvas_cursor, r0
	store options_vector_current_option, r0

	call free_options_vector

	call setup_canvas_options
	call canvas_clear
	pop r0
	rts

display_options:
	push r0 ; options_vector_size
	push r1 ; options_canvas_cursor
	push r2 ; options_vector_current_option
	push r6 ; color
	push r7 ; options_vector[options_vector_current_option]

	load r0, options_vector_size
	load r2, options_vector_current_option
	call setup_canvas_options
display_options_options_left_check:
	cmp r2, r0
	jeg display_options_options_left_end
display_options_options_left:
	loadn r7, #options_vector
	add r7, r7, r2 
	loadi r7, r7; toptions_vector[options_vector_current_option]
	loadn r6, #3584 ; r6 = aqua
	call print_string

	loadn r7, #10 ; \n
	call print_char ; pular uma linha, pois eh um option por linha

	inc r2
	inc r2
	store options_vector_current_option, r2 ; options_vector_current_option += 2

	load r1, canvas_cursor_pos
	store options_canvas_cursor, r1 ; salva a ultima posicao do cursor desse canvas
display_options_options_left_end:
	pop r7
	pop r6
	pop r2
	pop r1
	pop r0
	rts
; ----

; ----- BIBLIOTECAS -----
; -----    FOPEN    -----
file_system_start : var #1
file_system_setup:	; Rotina de setar a posicao da memoria em que os arquivos estao presentes.
			; Argumentos:
			; r7 = file_system_start, endereco do primeiro arquivo
			; Retorno: nenhum
	store file_system_start, r7
	rts

file_open:		; Rotina de pegar o ponteiro de arquivo a partir do seu nome.
			; Argumentos: 
			; r7 = char* file_name, nome do arquivo
			; Retorno:
			; r7 = FILE* fptr, endereco do arquivo
	push r0 ; 0
	push r1 ; constantes (EOF, EOFS e 14)
	push r2 ; pos
	push r3 ; *pos
	push r4 ; file_name
	push r5 ; file
	push r6 ; para paremetro de funcoes
	loadn r0, #0
	mov r4, r7
	loadn r5, #0 ; NULL
	load r2, file_system_start
	loadi r3, r2
file_open_search_file_check: ; while(*pos != EOFS && file == NULL){
	loadn r1, #65534 ; EOFS (FFFE)
	loadi r3, r2
	cmp r3, r1
	jeq file_open_search_file_end
	cmp r5, r0
	jne file_open_search_file_end
file_open_search_file:
	file_open_is_file_check: ; if(strcmp(name, pos) == 0) {
		mov r7, r4
		mov r6, r2
		call string_compare
		cmp r6, r0
		jne file_open_search_next_file
		mov r7, r2
		mov r6, r4
		call string_compare
		cmp r6, r0
		jne file_open_search_next_file
		; temos que fazer a comparacao 2 vezer pois ela pode dar negativa, e a saida eh uint
	file_open_is_file:
		loadn r1, #15 ; tamanho do file_name
		add r5, r2, r1 ; file = pos + 15
		jmp file_open_is_file_end
	file_open_search_next_file: ; else {
		file_open_search_next_file_check: ; while(*pos != EOF)
			loadi r3, r2
			loadn r1, #65535 ; EOF (FFFF)
			cmp r3, r1
			jeq file_open_search_next_file_end
		file_open_search_next_file_loop:
			inc r2
			jmp file_open_search_next_file_check
		file_open_search_next_file_end:
		inc r2 ; encontramos o fim do arquivo atual
		; entao somar mais um para ir para o proximo
	file_open_is_file_end:
	jmp file_open_search_file_check
file_open_search_file_end:
	mov r7, r5 ; da o FILE* para r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

file_close:		; Rotina de fechar o arquivo a partir de seu ponteiro
			; Argumentos:
			; r7 = FILE * file, ponteiro de arquivo
			; Retorno: nenhum
	push r0; 0
	push r7; proteger r7
	dec r7
	storei r7, r0 ; faz o cursor ter o valor 0
	pop r7
	pop r0
	rts

file_read_string:	; Rotina de ler uma linha do arquivo.
			; Argumentos:
			; r7 = FILE * file
			; r6 = tamanho no buffer
			; r5 = char * s, ponteiro do buffer de string
			; Retorno:
			; r6 = codigo de retorno: 0 -> EOF, 1 -> normal
	push r0 ; constantes
	push r1 ; FILE * file
	push r2 ; char para copia
	push r5 ; ponteiro do buffer
	push r7 ; ponteiro de arquivo
	; pega o ponteiro de arquivo onde ele parou
	mov r1, r7
	dec r7
	loadi r7, r7 ; cursor de arquivo
	add r7, r7, r1 ; ponteiro de arquivo no ultimo local que parou
file_read_string_copy_data_check: ; while(*file_ptr != EOF && buffer_size > 0 && *file_ptr != '\0' && *file_ptr != '\n'){
	loadi r2, r7 ;*file_ptr
	loadn r0, #65535 ; EOF
	cmp r2, r0
	jeq file_read_string_copy_data_end
	loadn r0, #10 ; \n
	cmp r2, r0
	jeq file_read_string_copy_data_end
	loadn r0, #0 ; \0
	cmp r2, r0
	jeq file_read_string_copy_data_end
	cmp r6, r0
	jel file_read_string_copy_data_end
file_read_string_copy_data:
	storei r5, r2
	inc r5
	inc r7
	dec r6
	jmp file_read_string_copy_data_check
file_read_string_copy_data_end:;}
	; coloca \0 no fim da string
	loadn r0, #0
	storei r5, r0
	; ----
	; verifica se estamos em \n ou \0 e avanca para frente o ponteiro
	; ou verifica se estamos em EOF e liga a flag
file_read_reached_EOF_check:
	loadn r0, #65535
	cmp r2, r0
	jne file_read_reached_termination_char
file_read_reached_EOF:
	loadn r6, #0 ; flag de terminacao
	jmp file_read_reached_EOF_end
file_read_reached_termination_char:
	inc r7 ; move o ponteiro um alem do char de terminacao
	loadn r6, #1 ; flag que ainda falta
file_read_reached_EOF_end:
	; guarda o valor atual do ponteiro de arquivo
	sub r7, r7, r1
	dec r1
	storei r1, r7
	; ----
	pop r7
	pop r5
	pop r2
	pop r1
	pop r0
	rts
; -----   MALLOC    -----
mem_move:		;  Rotina de setar o bloco de memoria a ser gerenciado pela biblioteca
				; Argumentos:
				; r7 = block_addr, endereco onde comeca o bloco de memoria
				; r6 = block_end_addr, endereco final do bloco de memoria gerenciado
				; Retorno: nenhum
	store block_addr_pos, r7
	store block_end_addr_pos, r6
	rts

mem_init:		; Rotina de inicializacao do bloco de memoria
				; Argumentos: nenhum
				; Retorno: nenhum
	push r0
	push r1
	loadn r0, #0
	load r1, block_addr_pos
	; Setando header do bloco inicial
	storei r1, r0 ; Seta a flag 'free'
	inc r1 ; Vai para o segundo elemento da struct
	load r0, block_end_addr_pos
	storei r1, r0
	; Seta next_block para o fim do bloco
	pop r1
	pop r0
	rts

mem_alloc:		; Rotina de alocacao dinamica de memoria
				; Argumentos:
				; r7 = desired_size, tamanho do espaco a ser alocado
				; Retorno:
				; r7 = ponteiro do espaco alocado, NULL caso nao tenha conseguido
	push r0 ; #0
	push r1 ; block_end_addr
	push r2 ; pos
	push r3 ; is_free
	push r4 ; next_block
	push r5 ; generic_alg
		
	loadn r0, #0
	; Procurando espaco disponivel
	load r1, block_end_addr_pos
	load r4, block_addr_pos ; next_block = block_addr
	; do {
mem_alloc_space_search_do_while:
	mov r2, r4 ; pos = next_block
	loadi r3, r2 ; is_free = *(pos)
	inc r2
	loadi r4, r2 ; next_block = *(pos + 1)
	dec r2 ; retorna pos para valor real
	; } while (next_block != block_end_addr -> se chegamos no ultimo bloco
	; && (!is_free -> caso o bloco esteja livre 
	; || ((next_block - pos - 2 != desired_size) -> se cabe exatamente no bloco
	; && (next_block - pos - 4 < desired_size) -> se ha como dar split no bloco
	;)));
	cmp r4, r1
	jeq mem_alloc_space_search_do_while_end ; next_block == block_end_addr -> chegamos no ultimo item, sair da busca 
	cmp r3, r0
	jne mem_alloc_space_search_do_while ; !is_free -> o bloco que estamos nao esta livre, continuar procurando
	loadn r5, #2
	sub r5, r4, r5 ; (next_block - 2)
	sub r5, r5, r2 ; (next_block - 2) - pos
	cmp r5, r7
	jeq mem_alloc_space_search_do_while_end ; (next_block - pos - 2 == desired_size), achamos um bloco usavel, sair
	dec r5
	dec r5 ; (next_block - pos - 2) - 2
	cmp r5, r7
	jeg mem_alloc_space_search_do_while_end ; (next_block - pos - 4 >= desired_size) -> bloco grande suficiente para slip, sair
	jmp mem_alloc_space_search_do_while ; o bloco nao eh util para alocacao exata, nem de split, continuar procurando
mem_alloc_space_search_do_while_end:
	; achamos um bloco ou chegamos no final
	; conferir se chegamos no final == sem memoria
	cmp r4, r1
	jne mem_alloc_alloc_memory ; nao estamos no fim, portanto eh um bloco alocavel
	cmp r3, r0
	jne mem_alloc_space_not_found ; estamos no fim, e nem ele esta livre, nao temos memoria
	loadn r5, #2
	sub r5, r4, r5 ; (next_block - 2)
	sub r5, r5, r2 ; (next_block - 2) - pos
	cmp r5, r7
	jeq mem_alloc_alloc_memory ; (next_block - pos - 2 == desired_size) -> o bloco final tem tamanho exato, podemos alocar ainda
	inc r7
	inc r7
	cmp r5, r7 ; para podermos fazer a comparacao (next_block - pos - 4 >= desired_size) na forma (next_block - pos - 2 >= desired_size + 2)
	dec r7
	dec r7 ; voltando o valor de r7 ao original
	jeg mem_alloc_alloc_memory ; (next_block - pos - 4 >= desired_size) -> bloco final grande suficiente para split, podemos alocar ainda
	; nao temos nem como ter alocacao exata, nem split, e chegamos no fim, retornar ponteiro NULL
mem_alloc_space_not_found:
	mov r7, r0 ; ponteiro de saida eh NULL
	jmp mem_alloc_return
mem_alloc_alloc_memory:
	; sabemos que o bloco atual eh proprio para alocacao
	; primeiro vemos se eh tamanho exato
	loadn r5, #2
	sub r5, r4, r5 ; (next_block - 2)
	sub r5, r5, r2 ; (next_block - 2) - pos
	cmp r5, r7
	jne mem_alloc_split_block ; (next_block - pos - 2) != desired_size -> o bloco atual eh para ser dado split
	; o bloco tem tamanho exato, apenas setar a flag de free e devolver o ponteiro
mem_alloc_exact_block:
	loadn r5, #2
	storei r2, r5 ; *(pos) = 2 -> flag de free setada como nao livre
	add r7, r2, r5 ; ponteiro de espaco alocado eh a pos + 2 de header
	jmp mem_alloc_return	
mem_alloc_split_block:
	; o bloco eh para ser dado split
	; atualizando o bloco atual ---
	loadn r5, #2
	storei r2, r5 ; *(pos) = 2 -> flag de free setada como nao livre
	add r5, r2, r5 ; (pos + 2)
	add r5, r5, r7 ; (pos + 2 + desired_size)
	inc r2
	storei r2, r5 ; *(pos + 1) = (pos + 2) + desired_size -> next_block do bloco atual apontando para o bloco a ser criado
	; criando o novo bloco ---
	storei r5, r0 ; *(pos + 2 + size) = 0 -> flag de free setada como livre, pois eh um novo bloco a ser alocado
	inc r5
	storei r5, r4 ; *(pos + 2 + size + 1) = next_block -> o novo bloco agora aponta para onde o atual estava apontando
	inc r2 ; agora r2 = pos + 2
	mov r7, r2 ; a saida tem o valor do ponteiro de pos + 2
	; fim da alocacao por split
mem_alloc_return:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

mem_empty:		; Rotina de setar toda a memoria em um bloco de memoria para 0
				; Argumentos:
				; r7 = memory_pointer, endereco da memoria a ser esvaziada
				; Retorno: nenhum
	push r0 ; 0
	push r1 ; next_block
	push r7 ; memory_pointer
	loadn r0, #0
	dec r7
	loadi r1, r7 ; carrega o ponteiro do proximo bloco de memoria
	inc r7 ; volta r7 ao valor do inicio desse bloco
mem_empty_loop_check:
	cmp r7, r1
	jeq mem_empty_loop_end ; while (memory_pointer != next_block)
mem_empty_loop:
	storei r7, r0 ; *memory_pointer = 0
	inc r7 ; memory_pointer++
	jmp mem_empty_loop_check
mem_empty_loop_end:
	pop r7
	pop r1
	pop r0
	rts

mem_calloc:		; Rotina de alocar memoria toda iniciada em 0
				; Argumentos:
				; r7 = desired_size, tamanho do espaco a ser alocado
				; Retorno:
				; r7 = ponteiro do espaco alocado, NULL caso nao tenha conseguido
	push r0 ; 0
	loadn r0, #0
	call mem_alloc
	cmp r7, r0 ; if (memory_pointer != NULL)
	jeq mem_calloc_allocation_failed
	call mem_empty ; colocar zeros no bloco de memoria alocado
mem_calloc_allocation_failed:
	pop r0
	rts

mem_free:		; Rotina de liberacao de memoria alocada
				; Argumentos:
				; r7 = memory_pointer, endereco da memoria alocada
				; Retorno: nenhum
	push r0
	push r1
	loadn r0, #0
	loadn r1, #2
	sub r1, r7, r1 ; Endereco da flag eh memory_pointer - 2
	storei r1, r0 ; Seta a flag 'free' do bloco de memoria
	pop r1
	pop r0
	rts

mem_defrag:		; Rotina de desfragmentacao de blocos de memoria livre
				; Argumentos: nenhum
				; Retorno: nenhum
	push r0 ; sempre 0
	push r1 ; block_end_addr_pos
	push r2 ; current_pos
	push r3 ; start_defrag_block_pos
	push r4 ; current_pos_free
	push r5 ; start_defrag_block_pos_free

	loadn r0, #0
	load r1, block_end_addr_pos
	load r2, block_addr_pos
	mov r3, r2 ; start_defrag_block_pos = block_addr

	; do {
mem_defrag_merging_blocks_do_while:
	loadi r5, r3 ; *(start_defrag_block_pos)
	loadi r4, r2 ; *(current_pos)
	
	cmp r4, r5
	jeq mem_defrag_found_new_defrag_block_end
	; nao achamos fim/inicio de bloco, pular o if	
mem_defrag_found_new_defrag_block:
	cmp r5, r0
	jne mem_defrag_merge_blocks_end
	; o bloco que achamos o fim eh de free, juntar eles
	mem_defrag_merge_blocks:
		inc r3
		storei r3, r2 ; *(start_block + 1) = current_pos -> junta os blocos free que sao seguidos
		dec r3 ; volta r3 ao valor original
	mem_defrag_merge_blocks_end:
	mov r3, r2 ; start_block = current_pos -> novo inicio de bloco de defragmentacao
mem_defrag_found_new_defrag_block_end:
	inc r2
	loadi r2, r2 ; current_pos = *(current_pos + 1) ; move para o proximo bloco
mem_defrag_merging_blocks_end_do_while:
	cmp r2, r1
	jne mem_defrag_merging_blocks_do_while
	; (current_pos != block_end_addr_pos) -> ha mais a ser possivelmente desfragmentado, ir para o proximo
	; ultima checagem, caso o conjunto final de blocos seja de free
	loadi r5, r3 ; *(start_defrag_block_pos)
	cmp r5, r0
	jne mem_defrag_merge_end_blocks
	; o bloco que achamos o fim eh de free, juntar eles
	mem_defrag_merge_end_blocks:
		inc r3
		storei r3, r2 ; *(start_block + 1) = current_pos -> junta os blocos free que sao seguidos
		dec r3 ; volta r3 ao valor original
	mem_defrag_merge_end_blocks_end:
mem_defrag_return:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
; -----   PRINTF    -----
screen_width: var #1
canvas_cursor_pos_x: var #1
canvas_cursor_pos_y: var #1
canvas_cursor_pos: var #1
canvas_resolution_x: var #1
canvas_resolution_y: var #1
canvas_start_pos_x: var #1
canvas_start_pos_y: var #1

drawing_screen_width:	; Rotina de setar a resolucao horizontal da tela
			; Argumentos:
			; r7 = screen_width, resolucao horizontal da tela
			; Retorno: nenhum
	store screen_width, r7
	rts


canvas_set_resolution:	; Rotina de setar a resolucao do canvas.
			; Argumentos:
			; r7 = res_x, resolucao em x
			; r6 = res_y, resolucao em y
			; Retorno: nenhum
	store canvas_resolution_x, r7
	store canvas_resolution_y, r6
	rts

canvas_set_origin:	; Rotina de setar a origem do canvas.
			; Argumentos:
			; r7 = pos_x, origem em x
			; r6 = pos_y, origem em y
			; Retorno: nenhum
	store canvas_start_pos_x, r7
	store canvas_start_pos_y, r6
	rts

canvas_move_cursor_xy:	; Rotina de mover o cursor do canvas por x e y.
			; Argumentos:
			; r7 = pos_x, pos em x
			; r6 = pos_y, pos em y
			; Retorno:
			; r7 = codigo de erro: 0 -> moveu; 1 -> x > resolucao_x; 2 -> y > resolucao_y
	push r0 ; constantes
	load r0, canvas_resolution_y
	cmp r6, r0
	jeg canvas_move_cursor_xy_y_too_big
	load r0, canvas_resolution_x
	cmp r7, r0
	jeg canvas_move_cursor_xy_x_too_big
	store canvas_cursor_pos_x, r7
	store canvas_cursor_pos_y, r6
	mul r0, r0, r6 ; pos_y * res_x
	add r7, r0, r7 ; x + y * res_x
	store canvas_cursor_pos, r7 ; guardar a posicao linear no canvas
	loadn r7, #0 ; conseguimos mover, colocar codigo 0
	jmp canvas_move_cursor_xy_return
canvas_move_cursor_xy_x_too_big:
	loadn r7, #1
	jmp canvas_move_cursor_xy_return
canvas_move_cursor_xy_y_too_big:
	loadn r7, #2
canvas_move_cursor_xy_return:
	pop r0
	rts

canvas_move_cursor:	; Rotina de mover o cursor do canvas.
			; Argumentos:
			; r7 = pos, posicao linear
			; Retorno:
			; r7 = codigo de erro: 0 -> moveu; 1 -> alem do fim do canvas
	push r0 ; consts
	push r6 ; pos_y
	load r0, canvas_resolution_x
	div r6, r7, r0 ; pos_y = pos / res_x
	mod r7, r7, r0 ; pos_x = pos % res_x
	call canvas_move_cursor_xy
	loadn r0, #0
	cmp r7, r0
	jeq canvas_move_cursor_return ; se o retorno de canvas_move_cursor_xy nao for 0, entao o valor a pos vai alem do canvas
canvas_move_cursor_too_big:
	loadn r7, #1
canvas_move_cursor_return:
	pop r6
	pop r0
	rts

canvas_clear:		; Rotina de limpar o canvas atual
			; Argumentos: nenhum
			; Retorno: nenhum
	push r0 ; 0
	push r1 ; pos_on_screen
	push r2 ; pos_x_on_canvas
	push r3 ; pos_y_on_canvas
	push r4 ; canvas_start_pos_x
	push r5 ; canvas_start_pos_y
	push r6 ; screen_width
	
	loadn r0, #0
	load r4, canvas_start_pos_x
	load r5, canvas_start_pos_y
	load r6, screen_width
	
	load r3, canvas_resolution_y ; carrega o tamanho de y no canvas
canvas_clear_loop_y_check: ; while (pos_y_on_canvas != 0) {
	cmp r3, r0
	jeq canvas_clear_loop_y_end
canvas_clear_loop_y:
	dec r3
	load r2, canvas_resolution_x ; carrega o tamanho de x no canvas
	canvas_clear_loop_x_check: ; while (pos_x_on_canvas != 0) {
		cmp r2, r0
		jeq canvas_clear_loop_x_end
	canvas_clear_loop_x:
		dec r2

		add r1, r3, r5
		mul r1, r1, r6
		add r1, r1, r4
		add r1, r1, r2
		; r1 = x + x0 + (y + y0) * W
		outchar r0, r1 ; desenha char vazio na pos de r1
		jmp canvas_clear_loop_x_check
	canvas_clear_loop_x_end: ; }
	jmp canvas_clear_loop_y_check
canvas_clear_loop_y_end: ; }
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

draw_char:		; Rotina de desenhar o caracter na posicao atual do cursor no canvas
			; Argumentos:
			; r7 = char, caracter para desenhar
			; r6 = color, cor do caracter
			; Retorno: nenhum
	push r0 ; consts e char com cor
	push r1 ; posicao para out_char
	load r1, canvas_cursor_pos_y
	load r0, canvas_start_pos_y
	add r1, r1, r0 ; (y + y0)
	load r0, screen_width
	mul r1, r1, r0 ; (y + y0) * W
	load r0, canvas_cursor_pos_x
	add r1, r1, r0 ; x + (y + y0) * W
	load r0, canvas_start_pos_x
	add r1, r1, r0 ; x + x0 + (y + y0) * W
	add r0, r7, r6 ; char_out = char + color
	outchar r0, r1 ; desenha char com cor color na pos (x + x0 + (y + y0) * W) 
	pop r1
	pop r0
	rts

print_char:		; Rotina de printar o caracter na posicao atual do cursor no canvas, e mover o cursor para a posicao seguinte
			; Argumentos:
			; r7 = char, caracter para printar
			; r6 = color, cor do caracter
			; Retorno: 
			; r7 = aviso de fim de canvas, setado caso printou na ultima posicao do buffer
	push r0; constantes
	push r6
	print_char_drawable_char_check:
		loadn r0, #31
		cmp r7, r0
		jle print_char_newline_check
		loadn r0, #127
		cmp r7, r0
		jeg print_char_newline_check
	print_char_drawable_char:
		call draw_char
		load r7, canvas_cursor_pos
		inc r7 ; canvas_cursor_pos + 1
		call canvas_move_cursor ; a rotina vai retornar 1 caso chegamos no fim, e ira andar o cursor um para frente
		jmp print_char_drawable_char_end
	print_char_newline_check:
		loadn r0, #10 ; /n
		cmp r7, r0
		jeq print_char_newline
		loadn r0, #13 ; /r
		jne print_char_drawable_char_end
	print_char_newline:
		loadn r7, #0
		load r6, canvas_cursor_pos_y
		inc r6 ; vai para o inicio da prox linha
		call canvas_move_cursor_xy
	print_char_drawable_char_end:
	pop r6
	pop r0
	rts

print_string:		; Rotina de printar uma string a partir da posicao atual
			; Argumentos:
			; r7 = char* s, endereco da string
			; r6 = color, cor da string
			; Retorno:
			; r7 = aviso de fim de canvas, setado caso chegamos ou tenhamos ultrapassado a ultima posicao do buffer, a string eh cortada caso ela ultrapasse
	push r0; 0
	push r1 ; char * s
	loadn r0, #0
	mov r1, r7
	loadi r7, r1 ; r7 tem o caracter
	cmp r7, r0 ; r7 == '\0'
	jeq print_string_return ; string vazia, nao printar nem mover cursor
print_string_loop:
	call print_char
	cmp r7, r0 ; r7 != 0, portanto fim de buffer
	jne print_string_return
	inc r1
	loadi r7, r1 ; proximo char
	cmp r7, r0
	jne print_string_loop ; r7 != '\0', continuar printando
	; se chegou aqui terminamos de printar sem chegar no fim, e r7 esta com 0 ('\0') 
print_string_return:
	pop r1
	pop r0
	rts

print_string_overflow:		; Rotina de printar uma string a partir da posicao atual, com overflow. Caso o fim seja atingido, ele parte da origem do canvas
			; Argumentos:
			; r7 = char* s, endereco da string
			; r6 = color, cor da string
			; Retorno: nenhum
	push r0; 0
	push r1 ; char * s
	push r7 ; char atual
	loadn r0, #0
	mov r1, r7
	loadi r7, r1 ; r7 tem o caracter
	cmp r7, r0 ; r7 == '\0'
	jeq print_string_overflow_return ; string vazia, nao printar nem mover cursor
print_string_overflow_loop:
	call print_char
	cmp r7, r0 ; r7 != 0, portanto fim de buffer, voltar cursor ao inicio
	jeq print_string_overflow_loop_reset_cursor_end
print_string_overflow_loop_reset_cursor:
	push r7
	mov r7, r0
	call canvas_move_cursor
	pop r7 ; push e pop mais facil do que de usar um novo registrador
print_string_overflow_loop_reset_cursor_end:
	inc r1
	loadi r7, r1 ; proximo char
	cmp r7, r0
	jne print_string_overflow_loop ; r7 != '\0', continuar printando
	; se chegou aqui terminamos de printar sem chegar no fim, e r7 esta com 0 ('\0') 
print_string_overflow_return:
	pop r7
	pop r1
	pop r0
	rts
; -----    SCANF    -----
get_char:		; Rotina de ler o char atualmente apertado. Nao bloqueante.
			; Argumentos: nenhum
			; Retorno:
			; r7 = char lido no teclado
	push r0
	inchar r7
	loadn r0, #255
	cmp r7, r0
	jne get_char_return
	loadn r7, #0 ; bug de fpga de ler 255 na primeira entrada, tratar portanto como um '\0'
get_char_return:
	pop r0
	rts

old_pressed_char : var #1
	static old_pressed_char + #0, #0
scan_char:		; Rotina de esperar um char ser apertado (ser diferente de '\0'). Bloqueante.
			; Argumentos: nenhum
			; Retorno:
			; r7 = char apertado no teclado
	push r0 ; '\0'
	push r1 ; old_pressed_char
	loadn r0, #0
	load r1, old_pressed_char
	loadn r7, #0 ; comeca como char nulo
scan_char_loop:
	call get_char
	cmp r7, r1
	mov r1, r7 ; ja comparou se eh igual, agora tomar o valor para si
	jeq scan_char_loop ; enquanto o char for igual ao anteriormente apertado, ficar no loop
	cmp r7, r0
	jeq scan_char_loop ; enquanto o char for '\0', ficar no loop
	store old_pressed_char, r1
	pop r1
	pop r0
	rts

scan_string:		; Rotina de esperar uma string ser enviada (ultimo char ser '\n'). Bloqueante.
			; Argumentos: 
			; r7 = char * s, endereco do buffer para a string
			; r6 = int max_size, tamanho maximo da string (nao incluindo '\0')
			; Retorno: nenhum
	push r0 ; guarda '\n', que eh condicao de parada, depois '\0' para inserir no fim da string
	push r1 ; char * s, endereco do char da string
	push r2 ; int size, tamanho da string, para nao ultrapassar o max_size
	push r7 ; pois scan_char retorna no r7, entao copiamos seu valor para r1, e protegemos r7 do caller
	mov r1, r7
	loadn r0, #13 ; '\n'
	loadn r2, #0
scan_string_loop:
	call scan_char
	storei r1, r7
	inc r1
	inc r2
	cmp r2, r6
	jgr scan_string_loop_end ; chegamos no tamaho maximo, sair
	cmp r7, r0
	jne scan_string_loop ; o char atual ainda nao eh '\n', continuar
scan_string_loop_end:
	loadn r0, #0
	storei r1, r0 ; sobreescreve o '\n'com um '\0'
	pop r7
	pop r2
	pop r1
	pop r0
	rts
; ----     STRING     ----
;---- Rotinas Gerais de String ----
string_length:			; Rotina de encontrar o tamanho da string
				; Argumentos:
				; r7 = ponteiro da string
				; Retorno:
				; r7 = tamanho da string
	push r0 ; 0
	push r1 ; tamanho da string
	push r2 ; *(r7)
	loadn r0, #0
	loadn r1, #0
	loadi r2, r7
	cmp r2, r0
	jeq string_length_loop_exit ; string de tamanho 0
string_length_loop:
	inc r1
	inc r7
	loadi r2, r7
	cmp r2, r0
	jne string_length_loop ; while(*(r7) != NULL)
string_length_loop_exit:
	mov r7, r1 ; r7 toma o tamanho da string
	pop r2
	pop r1
	pop r0
	rts

string_compare:			; Rotina de comparar duas strings
				; Argumentos:
				; r7 = endereco da string a
				; r6 = endereco da string b
				; Retorno: 
				; r6 = <0 se o char que nao bate de a for menor que o em b, 0 se forem iguais, >0 caso o contrario
	push r0 ; 0
	push r1 ; char_a
	push r2 ; char_b
	push r7 ; char * s_b
	loadn r0, #0
string_compare_loop: ; do {
	loadi r1, r7 ; char_a = *s_a;	
	loadi r2, r6 ; char_b = *s_b;	
	inc r6 ; vai para a prox pos no s_original
	inc r7 ; vai para a prox pos no s_copia
	cmp r1, r0
	jeq string_compare_loop_end
	cmp r2, r0
	jeq string_compare_loop_end
	cmp r1, r2
	jeq string_compare_loop
string_compare_loop_end: ; } while( char_a != '\0' && char_b != '\0' && char_a != char_b)
	; agora o resultado da comparacao eh dado ao subtrair char_b de char_a
	sub r6, r1, r2
	pop r7
	pop r2
	pop r1
	pop r0
	rts

string_starts_with:		; Rotina de conferir se uma string comeca com outra
				; Argumentos:
				; r6 = endereco da string base
				; r7 = endereco da string que queremos conferir se faz parte do inicio da string base
				; Retorno: 
				; r6 = 0, se a string rm r6 fazer parte do inicio da de r7, outro valor caso nao
	push r0 ; 0
	push r1 ; char_base
	push r2 ; char_comp
	; r6, s_comp
	push r7 ; char * s_base
	loadn r0, #0
string_starts_with_loop: ; do {
	loadi r1, r7 ; char_comp = *s_comp;	
	loadi r2, r6 ; char_base = *s_base;	
	inc r6 ; vai para a prox pos no s_base
	inc r7 ; vai para a prox pos no s_comp
	cmp r1, r0
	jeq string_starts_with_loop_end
	cmp r2, r0
	jeq string_starts_with_loop_end
	cmp r1, r2
	jeq string_starts_with_loop
string_starts_with_loop_end: ; } while( char_base != '\0' && char_comp != '\0' && char_base != char_comp)
	; se chegamos aqui, e char_comp == '\0', significa que todo o inicio da s_base contem s_comp, portanto r6 = 0, se nao, r6 = char_comp
	mov r6, r1
	pop r7
	pop r2
	pop r1
	pop r0
	rts	

string_copy:			; Rotina de copiar a string de um endereco para outro
				; Argumentos:
				; r7 = endereco do destino string
				; r6 = endereco da string original
				; Retorno: nenhum
	push r0 ; 0
	push r1 ; char_original
	push r6 ; char * s_original
	push r7 ; char * s_copia
	loadn r0, #0
string_copy_loop: ; do {
	loadi r1, r6 ; char_original = *s_original;	
	storei r7, r1 ; *(s_copia) = char_original
	inc r6 ; vai para a prox pos no s_original
	inc r7 ; vai para a prox pos no s_copia
	cmp r1, r0
	jne string_copy_loop ; } while( char_original != '\0')
string_copy_loop_end:
	pop r7
	pop r6
	pop r1
	pop r0
	rts
	
string_concatenate:		; Rotina de concaternar uma copia de uma string para uma outra de destino
				; Argumentos:
				; r7 = endereco da string destino
				; r6 = endereco da string fonte
				; Retorno: nenhum
	push r0 ; 0
	push r1 ; char_fonte
	push r6 ; char * s_fonte
	push r7 ; char * s_destino
	; temos que primeiro achar o fim da string do destino para podermos comecar a fazer append
	loadn r0, #0
string_concatenate_find_dest_end_loop_check: ; while (*s_destinho != '\0') {
	loadi r1, r7
	cmp r1, r0
	jeq string_concatenate_find_dest_end_loop_end
string_concatenate_find_dest_end_loop:
	inc r7 ; s_destino++
	jmp string_concatenate_find_dest_end_loop_check
string_concatenate_find_dest_end_loop_end: ; }

string_concatenate_loop: ; do {
	loadi r1, r6 ; char_fonte = *s_fonte;	
	storei r7, r1 ; *(s_destino) = char_fonte
	inc r6 ; vai para a prox pos no s_fonte
	inc r7 ; vai para a prox pos no s_destino
	cmp r1, r0
	jne string_copy_loop ; } while( char_fonte != '\0')
string_concatenate_loop_end:
	pop r7
	pop r6
	pop r1
	pop r0
	rts

string_reverse:			; Rotina de inverter a string, editando ela no endereco
				; Argumentos:
				; r7 = endereco da string
				; Retorno: nenhum
	push r0 ; pos
	push r1 ; pos_reverse
	push r2 ; c_pos
	push r7 ; size e depois c_pos_reverse
	mov r0, r7 ; pos = endereco string
	call string_length
	add r1, r0, r7 ; pos + string_length
	dec r1 ; pos_reverse = pos + string_length - 1
string_reverse_loop_check:
	cmp r0, r1
	jeg string_reverse_loop_end ; while (pos < pos_reverse) {
string_reverse_loop:
	loadi r2, r0 ; c_pos = s[pos]
	loadi r7, r1 ; c_pos_reverse = s[pos_reverse]
	storei r1, r2 ; s[pos_reverse] = c_pos
	storei r0, r7 ; s[pos] = c_pos_reverse
	inc r0 ; pos++
	dec r1 ; pos --
	jmp string_reverse_loop_check
string_reverse_loop_end: ; }
	pop r7
	pop r2
	pop r1
	pop r0
	rts

string_pointer_break:		; Rotina de encontrar a posicao da primeira ocorrencia de uma caracter da string de busca na string scaneada
				; Argumentos:
				; r7 = ponteiro da string a ser scaneada
				; r6 = ponteiro da string com caracteres de busca
				; Retorno:
				; r7 = endereco do caracter encontrado
	push r0 ; 0
	push r1 ; char da string scaneada
	push r2 ; char da string de busca
	push r3 ; ponteiro da string de busca
	loadn r0, #0
string_pointer_break_loop_check: ; while(*(string_scanned) != NULL) {
	loadi r1, r7 ; r1 toma o char na pos de r7
	cmp r1, r0
	jeq string_pointer_break_loop_end
string_pointer_break_loop:
	mov r3, r6 ; vai para o inicio da string de busca
	string_pointer_break_find_loop_check: ; while(*(string_search) != NULL){
		loadi r2, r3 ; r2 toma o char na pos de r3
		cmp r2, r0
		jeq string_pointer_break_find_loop_end
	string_pointer_break_find_loop:
		cmp r1, r2
		jeq string_pointer_break_return ; se achamos o caracter da string scaneada na string de busca, retornar agora pois r7 tem o valor correto
		inc r3
		jmp string_pointer_break_find_loop_check
	string_pointer_break_find_loop_end:; } 
	inc r7 ; vai para o proximo caracter
	jmp string_pointer_break_loop_check
string_pointer_break_loop_end: ; }
	; se nao retornamos antes, entao nao encontramos nenhum char da string de busca na escaneada, retornando NULL
	mov r7, r0
string_pointer_break_return:
	pop r3
	pop r2
	pop r1
	pop r0
	rts

string_span:		; Rotina de encontrar o tamanho da porcao de caracteres da string de busca contida na string scaneada
				; Argumentos:
				; r7 = ponteiro da string a ser scaneada
				; r6 = ponteiro da string com caracteres de busca
				; Retorno:
				; r6 = tamanho do bloco de caracteres
	push r0 ; 0
	push r1 ; char da string scaneada
	push r2 ; char da string de busca
	push r3 ; ponteiro da string de busca
	push r4 ; tamanho do bloco
	push r7 ; para protecao do r7
	
	loadn r0, #0
	loadn r4, #0 ; tamanho inicia 0
string_span_loop_check: ; while(*(string_scanned) != NULL) {
	loadi r1, r7 ; r1 toma o char na pos de r7
	cmp r1, r0
	jeq string_span_loop_end
string_span_loop:
	mov r3, r6 ; vai para o inicio da string de busca
	string_span_find_loop_check: ; while(*(string_search) != NULL && *(string_search) != *(string_scanned)){
		loadi r2, r3 ; r2 toma o char na pos de r3
		cmp r2, r0
		jeq string_span_find_loop_end
		cmp r2, r1
		jeq string_span_find_loop_end
	string_span_find_loop:
		inc r3
		jmp string_span_find_loop_check
	string_span_find_loop_end:; }
	cmp r2, r0
	jeq string_span_not_in_span ; if(*(string_search) != NULL), estamos no spam 
string_span_in_span:
	inc r4 ; esse caracter eh do bloco, entao aumentar o valor em 1
	jmp string_span_in_span_end
string_span_not_in_span: ; else if(tamanho_bloco > 0), acabamos de sair do bloco, sair do loop, pois o char de busca eh nulo, aka nao encontramos
	cmp r4, r0
	jgr string_span_loop_end
string_span_in_span_end:
	inc r7 ; vai para o proximo caracter
	jmp string_span_loop_check
string_span_loop_end: ; }
	mov r6, r4 ; r6 recebe o valor do tamanho do bloco
string_span_return:
	pop r7
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

string_token:		; Rotina de extrair tokens de uma string a partir de caracteres de delimitacao
				; Argumentos:
				; r7 = ponteiro da string a ser scaneada
				; r6 = ponteiro da string com caracteres de delimitacao
				; r5 = endereco onde o token deve ser escrito (tem que ser grande o suficiente para o token)
				; r4 = tamanho do buffer em r5, nao incluindo o char de finalizacao '\0', ira parar de escrever no token e avisar no retorno, contudo ira retornar a correta posicao para a busca do token seguinte. TEM QUE SER MAIOR QUE 1.
				; Retorno:
				; r7 = aponta para a posicao final do token na string scaneada
				; r6 = codigo de erro: 0 -> consegiu escrever, 1 -> encheu completamente o buffer
	push r0 ; 0
	push r1 ; char da string scaneada
	push r2 ; char da string de delimitacao
	push r3 ; ponteiro da string de delimitacao
	push r4 ; tamanho disponivel no buffer de token
	push r5 ; ponteiro do token_buffer
	loadn r0, #0
	storei r5, r0 ; faz com que o primeiro char no buffer the token seja nulo, sera util para verificar se foi encontrado um token na string
string_token_loop_check: ; while(*(string_scanned) != NULL) {
	loadi r1, r7 ; r1 toma o char na pos de r7
	cmp r1, r0
	jeq string_token_loop_end
string_token_loop:
	mov r3, r6 ; vai para o inicio da string de busca
	string_token_find_loop_check: ; while(*(string_delimiter) != NULL && *(string_delimiter) != *(string_scanned)){
		loadi r2, r3 ; r2 toma o char na pos de r3
		cmp r2, r0
		jeq string_token_find_loop_end
		cmp r2, r1
		jeq string_token_find_loop_end
	string_token_find_loop:
		inc r3
		jmp string_token_find_loop_check
	string_token_find_loop_end:; }
	cmp r2, r0
	jne string_token_outside_token ; if(*(string_delimiter) == NULL), estamos no token
string_token_in_token:
	; estamos no token, entao copiar para o token
	cmp r4, r0
	jeq string_token_in_token_copy_end ; se o tamanho for zero, nao podemos mais inserir
	string_token_in_token_copy:
		storei r5, r1 ; copiar o char para o token_buffer
		dec r4 ; reduzir por um o tamanho maximo permitido
		cmp r4, r0
		jeq string_token_in_token_end ; apenas ir para o proximo caso nao tenhamos estourado o tamanho, necessario pois usamos o conteudo do token_buffer para determinar se estavamos em um token
		inc r5 ; ir para a proxima pos do token_buffer
	string_token_in_token_copy_end:
	jmp string_token_in_token_end
string_token_outside_token: ; else if(*(token_buffer) != NULL), acabamos de sair do bloco do token, sair do loop, pois o char de delimitacao nao eh nulo, entao ver se foi escrito no token_buffer, se sim entao estavamos no token antes, ou seja, condicao de parada
	loadi r2, r5 ; pega o char no token_buffer, usando r2 pois ele teve o seu uso no loop finalizado 
	cmp r2, r0
	jne string_token_loop_end ; nao eh NULL? entao acabamos de sair do token
string_token_in_token_end:
	inc r7 ; vai para o proximo caracter
	jmp string_token_loop_check
string_token_loop_end: ; }
	; r7 esta apontando para o local correto
	; apenas precisamos colocar o codigo de erro em r6
	; e adicionar o char de termino '\0' no token_buffer
	inc r5
	storei r5, r0 ; coloca '\0' no fim
	cmp r4, r0
	mov r6, r0 ; antes de checar assumir que nao usamos todo o buffer
	jne string_token_used_all_token_buffer_end
string_token_used_all_token_buffer:
	loadn r6, #1
string_token_used_all_token_buffer_end:
string_token_return:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts


;---- Rotinas de Conversao String para INT ----
convert_char_base_10_to_int:	; Rotina de converter char para inteiro, base 10
				; Argumentos:
				; r7 = caractere para ser convertido
				; Retorno:
				; r7 = valor de retorno
				; r6 = codigo de erro: 0 -> convertido; 1 -> nao eh um inteiro base 10
	loadn r6, #'9' ; usado para auxiliar nas comparacoes
	cmp r7, r6
	jgr convert_char_base_10_to_int_wrong_char ; r7 > '9'
	loadn r6, #'0' 
	cmp r7, r6
	jle convert_char_base_10_to_int_wrong_char ; r7 < '0'
	sub r7, r7, r6 ; r7 = r7 - '0' -> calculo de ascii de 0-9 para inteiro
	loadn r6, #0 ; convertido
	rts
convert_char_base_10_to_int_wrong_char:
	loadn r6, #1 ; o char nao eh de 0 - 9
	rts
	

convert_string_base_10_to_int:	; Rotina de converter string para inteiro.
			; Argumentos: 
			; r7 = pointeiro do inicio da string
			; Retorno:
			; r7 = valor convertido da string
			; r6 = codigo de erro: 0 -> convertido; 1 -> nao eh um inteiro; 2 -> overflow no inteiro
	push r0 ; 0
	push r1 ; valor da saida atual
	push r2 ; numero de casas a serem convertidas
	push r3 ; valor da casa (10**r2)
	push r4 ; ponteiro da string
	push r5 ; 10

	loadn r0, #0
	loadn r1, #0
	loadn r3, #1  ; valor da primeira casa decimal
	loadn r5, #10 ; cada casa decimal tem valor de 10
	mov r4, r7 ; r4 aponta para o inicio da string
	call string_length ; temos agora o tamanho da string
	mov r2, r7 ; que eh o numero de casas do numero
	add r4, r4, r7 ; r4 (inicio + tamanho) aponta agora para o char de finalizacao da string ('\0)
convert_string_base_10_to_int_loop:
	dec r4 ; vai para o char anterior
	mov r7, r4 ; pega o endero do char anterior
	loadi r7, r7 ; pega o char do endereco apontado por r7
	call convert_char_base_10_to_int
	; em r7 temos o valor
	; em r6 o codigo se o valor eh valido, se nao for (r6 != 0), retornar agora
	cmp r6, r0
	jne convert_string_base_10_to_int_return 
	; r6 != 0, portanto o char nao eh um inteiro, retornemos agora com r6 setado
	mul r7, r7, r3 
	; valor_unidade = valor_unidade * valor_da_casa
	add r1, r1, r7 ; valor_saida += valor_unidade
	jov convert_string_base_10_to_int_overflow ; deu overflow na operacao anterior, retornar que o numero na string eh grande de mais
	mul r3, r3, r5 ; valor_da_casa = valor_da_casa * 10, para termos o valor da casa seguinte que eh 10**casa
	dec r2 ; reduz o numero de casa decimais a ser convertidas
	cmp r2, r0
	jne convert_string_base_10_to_int_loop ; while (casa_decimal != 0), pois quando o numero de casa decimais a ser convertidas for zero, entao nao tem mais unidades para somar
	mov r7, r1 ; move o resultado das somas para r7
	loadn r6, #0
	jmp convert_string_base_10_to_int_return ; retorna o valor determinado
convert_string_base_10_to_int_overflow:
	loadn r6, #2 ; codigo de overflow
convert_string_base_10_to_int_return:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

convert_char_base_16_to_int:	; Rotina de converter char para inteiro, base 16
				; Argumentos:
				; r7 = caractere para ser convertido
				; Retorno:
				; r7 = valor de retorno
				; r6 = codigo de erro: 0 -> convertido; 1 -> nao eh um inteiro base 16

	loadn r6, #'0' 
	cmp r7, r6
	jle convert_char_base_10_to_int_wrong_char ; r7 < '0'
	loadn r6, #'9' ; usado para auxiliar nas comparacoes
	cmp r7, r6
	jel convert_char_base_16_to_int_0_9 ; r7 <= '9'
	; r7 entre 0 e 9
	loadn r6, #'A' 
	cmp r7, r6
	jle convert_char_base_10_to_int_wrong_char ; r7 < 'A'
	loadn r6, #'F' ; usado para auxiliar nas comparacoes
	cmp r7, r6
	jel convert_char_base_16_to_int_A_F ; r7 <= 'F'
	; r7 entre A e F
	loadn r6, #'a' 
	cmp r7, r6
	jle convert_char_base_10_to_int_wrong_char ; r7 < 'a'
	loadn r6, #'f' ; usado para auxiliar nas comparacoes
	cmp r7, r6
	jel convert_char_base_16_to_int_a_f ; r7 <= 'f'
	; r7 entre A e F
convert_char_base_16_to_int_wrong_char:
	loadn r6, #1 ; o char nao eh de 0 - 9
	rts
convert_char_base_16_to_int_0_9:
	loadn r6, #'0'
	sub r7, r7, r6 ; r7 = r7 - '0' -> calculo de ascii de 0-9 para inteiro
	jmp convert_char_base_16_to_int_return
convert_char_base_16_to_int_A_F:
	loadn r6, #10
	add r7, r7, r6
	loadn r6, #'A'
	sub r7, r7, r6 ; r7 = r7 - 'A' + 10 -> calculo de ascii de A-F para inteiro
	jmp convert_char_base_16_to_int_return
convert_char_base_16_to_int_a_f:
	loadn r6, #10
	add r7, r7, r6
	loadn r6, #'a' ;
	sub r7, r7, r6 ; r7 = r7 - 'a' + 10 -> calculo de ascii de a-f para inteiro
convert_char_base_16_to_int_return:
	loadn r6, #0
	rts

convert_string_base_16_to_int:	; Rotina de converter string para inteiro.
			; Argumentos: 
			; r7 = pointeiro do inicio da string
			; Retorno:
			; r7 = valor convertido da string
			; r6 = codigo de erro: 0 -> convertido; 1 -> nao eh um inteiro; 2 -> overflow no inteiro
	push r0 ; 0
	push r1 ; valor da saida atual
	push r2 ; numero de casas a serem convertidas
	push r3 ; valor da casa (16**r2)
	push r4 ; ponteiro da string
	push r5 ; 10

	loadn r0, #0
	loadn r1, #0
	loadn r3, #1  ; valor da primeira casa decimal
	loadn r5, #16 ; cada casa decimal tem valor de 16
	mov r4, r7 ; r4 aponta para o inicio da string
	call string_length ; temos agora o tamanho da string
	mov r2, r7 ; que eh o numero de casas do numero
	add r4, r4, r7 ; r4 (inicio + tamanho) aponta agora para o char de finalizacao da string ('\0)
convert_string_base_16_to_int_loop:
	dec r4 ; vai para o char anterior
	mov r7, r4 ; pega o endero do char anterior
	loadi r7, r7 ; pega o char do endereco apontado por r7
	call convert_char_base_16_to_int
	; em r7 temos o valor
	; em r6 o codigo se o valor eh valido, se nao for (r6 != 0), retornar agora
	cmp r6, r0
	jne convert_string_base_16_to_int_return 
	; r6 != 0, portanto o char nao eh um inteiro, retornemos agora com r6 setado
	mul r7, r7, r3 
	; valor_unidade = valor_unidade * valor_da_casa
	add r1, r1, r7 ; valor_saida += valor_unidade
	jov convert_string_base_16_to_int_overflow ; deu overflow na operacao anterior, retornar que o numero na string eh grande de mais
	mul r3, r3, r5 ; valor_da_casa = valor_da_casa * 16, para termos o valor da casa seguinte que eh 16**casa
	dec r2 ; reduz o numero de casa decimais a ser convertidas
	cmp r2, r0
	jne convert_string_base_16_to_int_loop ; while (casa_decimal != 0), pois quando o numero de casa decimais a ser convertidas for zero, entao nao tem mais unidades para somar
	mov r7, r1 ; move o resultado das somas para r7
	loadn r6, #0
	jmp convert_string_base_16_to_int_return ; retorna o valor determinado
convert_string_base_16_to_int_overflow:
	loadn r6, #2 ; codigo de overflow
convert_string_base_16_to_int_return:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;---- Rotina de Conversao INT para String ----
int_symbols: string "0123456789abcdef"
convert_int_to_string:	; Rotina de converter inteiro para representacao em base qualquer
; Inspirado no codigo em https://learn.saylor.org/mod/book/view.php?id=33001&chapterid=12849, mas sem ser recursivo
				; Argumentos:
				; r7 = char *s, endereco onde a string sera escrita
				; r6 = max_size, tamanho maximo que a string pode ter, nao incluindo o '\0'
				; r5 = valor, valor para ser convertido
				; r4 = base, base para se converter, de 2 - 16 apenas
				; Retorno: 
				; r6 = codigo de erro: 0 -> convertido, 1 -> tamanho estourado
	push r0 ; 0, e constantes
	push r1 ; char* s
	push r2 ; tamanho atual da string
	push r3 ; symbol_to_use
	push r5 ; valor a ser convertido
	loadn r0, #0
	mov r1, r7
	loadn r2, #0
	cmp r2, r6
	jeq convert_int_to_string_loop_end ; tamanho maximo eh zero, portanto nao tem o que converter
convert_int_to_string_loop:
	mod r3, r5, r4 ; valor % base -> algarismo
	loadn r0, #int_symbols
	add r3, r0, r3 ; *(int_symbols[valor % base])
	loadi r3, r3 ; int_symbols[valor % base]
	storei r1, r3 ; *s = int_symbols[valor % base]
	
	div r5, r5, r4 ; valor = valor / base
	inc r1 ; s++, vai para a proximo posicao na string
	inc r2 ; tamanho_atual++
	loadn r0, #0
	cmp r5, r0
	jeq convert_int_to_string_loop_end ; valor == 0, portanto terminamos a conversao
	cmp r2, r6
	jle convert_int_to_string_loop ; ainda nao atingimos o tamanho maximo, voltar no loop
convert_int_to_string_loop_end:
	loadn r0, #0
	storei r1, r0 ; coloca '\0' no fim da string
	loadn r6, #0 ; conseguimos converter
	call string_reverse ; inverte a string, colocando os algarismos na ordem certa
	jmp convert_int_to_string_return
convert_int_to_string_not_enough_space:
	loadn r6, #1 ; espaco faltando para converter
convert_int_to_string_return:
	pop r5
	pop r3
	pop r2
	pop r1
	pop r0
	rts
