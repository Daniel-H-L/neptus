#############################################################################
# Copyright (c) 2004-2020 Universidade do Porto - Faculdade de Engenharia   #
# Laboratório de Sistemas e Tecnologia Subaquática (LSTS)                   #
# All rights reserved.                                                      #
# Rua Dr. Roberto Frias s/n, sala I203, 4200-465 Porto, Portugal            #
#                                                                           #
# This file is part of Neptus, Command and Control Framework.               #
#                                                                           #
# Commercial Licence Usage                                                  #
# Licencees holding valid commercial Neptus licences may use this file      #
# in accordance with the commercial licence agreement provided with the     #
# Software or, alternatively, in accordance with the terms contained in a   #
# written agreement between you and Universidade do Porto. For licensing    #
# terms, conditions, and further information contact lsts@fe.up.pt.         #
#                                                                           #
# Modified European Union Public Licence - EUPL v.1.1 Usage                 #
# Alternatively, this file may be used under the terms of the Modified EUPL,#
# Version 1.1 only (the "Licence"), appearing in the file LICENCE.md        #
# included in the packaging of this file. You may not use this  work        #
# except in compliance with the Licence. Unless required by  applicable     #
# law or agreed to in writing, software distributed under the Licence  is   #
# distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF      #
# ANY KIND, either express or implied. See the Licence for the specific     #
# language governing permissions and limitations at                         #
# https://github.com/LSTS/neptus/blob/develop/LICENSE.md                    #
# and http://ec.europa.eu/idabc/eupl.html.                                  #
#                                                                           #
# For more information please see <http://lsts.fe.up.pt/neptus>.            #
#############################################################################
# Author: Paulo Dias                                                        #
#############################################################################
# This script is the NSIS Utils for Neptus installer                        #
#############################################################################

Function WriteToFile
  Exch $0 ;file to write to
  Exch
  Exch $1 ;text to write
  
  FileOpen $0 $0 a #open file
  FileSeek $0 0 END #go to end
  FileWrite $0 $1 #write to file
  FileClose $0
  
  Pop $1
  Pop $0
FunctionEnd

!macro WriteToFile NewLine File String
  !if `${NewLine}` == true
  Push `${String}$\r$\n`
  !else
  Push `${String}`
  !endif
  Push `${File}`
  Call WriteToFile
!macroend
!define WriteToFile '!insertmacro WriteToFile false'
!define WriteLineToFile '!insertmacro WriteToFile true'

!macro WriteLangPref String
  CreateDirectory "$INSTDIR\conf"
  ${WriteLineToFile} "$INSTDIR\conf\general-properties.xml" '<?xml version="1.0" encoding="UTF-8"?>'
  ${WriteLineToFile} "$INSTDIR\conf\general-properties.xml" '<!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">'
  ${WriteLineToFile} "$INSTDIR\conf\general-properties.xml" '<properties>'
  ${WriteLineToFile} "$INSTDIR\conf\general-properties.xml" '<comment>Properties generated by Neptus</comment>'
  ${WriteLineToFile} "$INSTDIR\conf\general-properties.xml" '<entry key="Language">${String}</entry>'
  ${WriteLineToFile} "$INSTDIR\conf\general-properties.xml" '</properties>'
!macroend
!define WriteLangPref '!insertmacro WriteLangPref'
