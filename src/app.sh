#!/bin/bash

# application for main execution

application() {
	
	./src/SECURE/primary.sh

	sleep 2

	local $command

	select command in "FIRST" "SECOND"; do

		if [[ "$command" == "quit" ]]; then
			
			./src/SECURE/quit.sh

		else

			echo "$command"

		fi

	done 
}

welcome() {

	echo "__________________________________________________________________________________________________"
	echo
	echo
	echo
	echo
	echo
	echo "   WW        WW                                                                 "
	echo "   WW        WW                                                                 "
	echo "   WW        WW  EE EE EE  LL        CC CC CC  OO OO OO  MMM    MMM  EE EE EE   "
	echo "   WW        WW  EE        LL        CC        OO    OO  MM MMMM MM  EE         "
	echo "   WW        WW  EE        LL        CC        OO    OO  MM  MM  MM  EE         "
	echo "   WW   WW   WW  EE EE     LL        CC        OO    OO  MM  MM  MM  EE EE      "
	echo "   WW   WW   WW  EE        LL        CC        OO    OO  MM      MM  EE         "
	echo "   WW WW  WW WW  EE        LL        CC        OO    OO  MM      MM  EE         "
	echo "   WWWW    WWWW  EE EE EE  LL LL LL  CC CC CC  OO OO OO  MM      MM  EE EE EE   "
	echo "________________________________________________________________________________"
	echo
	echo "   [ In This Simple Linux Script System ] "
	echo
	echo
	echo
}

clear

welcome

application

# ------------------------------

# list() {

# echo. ==================================================================================================
# echo.
# echo                               WELCOME %username%, What can I do for you.
# echo.
# echo. ==================================================================================================
# echo.
# echo     1.  ABOUT SYSTEM __________________
# echo.                                                                                       
# echo     2.  MATHAMATICS FORMULA ___________                               A                    
# echo.                                                                     AAA  
# echo     3.  FOLDER SYSTEM _________________                             AAAAA  
# echo.                                                                   AAAAAAA
# echo     4.  FOLDER OPERATING ______________                           AAAAAAAAA
# echo.                                                                 AAAAAAAAAAA
# echo     5.  DOCUMENT MANUPULATION _________                         AAAAAAAAAAAAA  
# echo.                                                                 AAAA   AAAA
# echo     6.  PROTECTION SYSTEM _____________                         AAAA     AAAA
# echo.                                                               AAAA       AAAA 
# echo     7.  MATHEMATIC FUNCTION ___________                       AAAAA       AAAAA
# echo.                                                             AAAAA         AAAAA
# echo     8.  OPEN APPLICATION ______________                     AAAAA           AAAAA
# echo.                                                           AAAAAAAAAAAAAAAAAAAAAAA
# echo     9.  ADMIN CONTROL SYSTEM __________                   AAAAAAAAAAAAAAAAAAAAAAAAA
# echo.                                                         AAAAAAAAAAAAAAAAAAAAAAAAAAA
# echo     10. NETWORK ACCESS ________________                 AAAAAA                 AAAAAA
# echo.                                                       AAAAAA                   AAAAAA
# echo     11. CLOSE SYSTEM __________________               AAAAAA                     AAAAAA
# echo.                                                   AAAAAAAAA                      AAAAAAAA
# echo     12. SYSTEM CONTROL ________________           AAAAAAAAA                        AAAAAAAA
# echo.                                                 AAAAAAAAAA                        AAAAAAAAA
# echo     13. MALWARE ATTACK ________________         AAAAAAAAAAAA                      AAAAAAAAAAA
# echo.                                               AAAAAAAAAAAAAA     ===========    AAAAAAAAAAAAA
# echo     14. DESTROY ALL SYSTEM ____________ 
# echo.
# echo ______________________________________________
# echo                                               \        DATE %date% \\\\\\\\\\\\\\\\\\\
# echo                                                \__________________________________________________
# }

whoareyou() {

echo "===================================================================================================================="
echo                                                                                      
echo 
echo "                            A                				"
echo "                           AAA               				"
echo "                          AAAAA              				"
echo "                         AAAAAAA             				"
echo "                        AAAAAAAAA            				"
echo "                       AAAAAAAAAAA           				"
echo "                      AAAAAA AAAAAA          				"       
echo "                       AAAA   AAAA           				"             
echo "                      AAAA     AAAA                        LL        II  SS SS SS  HH    HH  AA AA AA 		"                
echo "                     AAAA       AAAA                       LL        II  SS        HH    HH  AA    AA 		"        
echo "                    AAAAA       AAAAA                      LL        II  SS        HH    HH  AA    AA 		"  
echo "                   AAAAA         AAAAA                     LL        II  SS SS SS  HH HH HH  AA AA AA 		"
echo "                  AAAAA           AAAAA                    LL        II        SS  HH    HH  AA    AA 		"
echo "                 AAAAAAAAAAAAAAAAAAAAAAA                   LL        II        SS  HH    HH  AA    AA 		"
echo "                AAAAAAAAA[MAYANK]AAAAAAAA                  LL LL LL  II  SS SS SS  HH    HH  AA    AA 		"
echo "               AAAAAAAAAAAAAAAAAAAAAAAAAAA                =============================================	"
echo "              AAAAAA                 AAAAAA               [ algorithm list in simple high application ]	"
echo "             AAAAAA                   AAAAAA 				"
echo "            AAAAAA                     AAAAAA 			" 
echo "         AAAAAAAA                       AAAAAAAA 			"
echo "        AAAAAAAA                         AAAAAAAA 		" 
echo "       AAAAAAAAA                         AAAAAAAAA 		"
echo "      AAAAAAAAAAA                       AAAAAAAAAAA 		"
echo "     AAAAAAAAAAAAA                     AAAAAAAAAAAAA 		"
echo
echo                                                         
echo "___________________________________________________________________________________________________________________"
echo

}