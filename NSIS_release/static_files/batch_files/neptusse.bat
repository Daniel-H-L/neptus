@echo off
rem #############################################################################
rem # Copyright (c) 2004-2020 Universidade do Porto - Faculdade de Engenharia   #
rem # Laboratório de Sistemas e Tecnologia Subaquática (LSTS)                   #
rem # All rights reserved.                                                      #
rem # Rua Dr. Roberto Frias s/n, sala I203, 4200-465 Porto, Portugal            #
rem #                                                                           #
rem # This file is part of Neptus, Command and Control Framework.               #
rem #                                                                           #
rem # Commercial Licence Usage                                                  #
rem # Licencees holding valid commercial Neptus licences may use this file      #
rem # in accordance with the commercial licence agreement provided with the     #
rem # Software or, alternatively, in accordance with the terms contained in a   #
rem # written agreement between you and Universidade do Porto. For licensing    #
rem # terms, conditions, and further information contact lsts@fe.up.pt.         #
rem #                                                                           #
rem # Modified European Union Public Licence - EUPL v.1.1 Usage                 #
rem # Alternatively, this file may be used under the terms of the Modified EUPL,#
rem # Version 1.1 only (the "Licence"), appearing in the file LICENCE.md        #
rem # included in the packaging of this file. You may not use this  work        #
rem # except in compliance with the Licence. Unless required by  applicable     #
rem # law or agreed to in writing, software distributed under the Licence  is   #
rem # distributed on an "AS IS" basis, WITHOUT WARRANTIES OR CONDITIONS OF      #
rem # ANY KIND, either express or implied. See the Licence for the specific     #
rem # language governing permissions and limitations at                         #
rem # https://github.com/LSTS/neptus/blob/develop/LICENSE.md                    #
rem # and http://ec.europa.eu/idabc/eupl.html.                                  #
rem #                                                                           #
rem # For more information please see <http://lsts.fe.up.pt/neptus>.            #
rem #############################################################################
rem # Author: Paulo Dias, José Pinto                                            #
rem #############################################################################

set CLASSPATH=.;bin/neptus.jar;conf;./lib/Jama-1.0.2.jar;./lib/JavaAPIforKml-2.2.0.jar;./lib/PSEngine-javadoc.jar;./lib/PSEngine.jar;./lib/RXTXcomm.jar;./lib/StarfireExt.jar;./lib/ais-contact-manager-1.0.jar;./lib/aisparser-2.0.0.jar;./lib/charsets-zip.jar;./lib/commons-cli-1.2.jar;./lib/commons-codec-1.9.jar;./lib/commons-collections-3.2.1.jar;./lib/commons-compress-1.10.jar;./lib/commons-configuration-1.10.jar;./lib/commons-email-1.3.2.jar;./lib/commons-httpclient-3.1-deprecation.jar;./lib/commons-io-2.4.jar;./lib/commons-lang-2.6.jar;./lib/commons-lang3-3.2.1.jar;./lib/commons-logging-1.2.jar;./lib/commons-net-3.3.jar;./lib/dom4j/dom4j-1.6.1.jar;./lib/dom4j/jaxen-1.1.1.jar;./lib/firebase-client-jvm-2.0.0.jar;./lib/fop/avalon-framework-4.2.0.jar;./lib/fop/batik.jar;./lib/fop/fop.jar;./lib/fop/jimi-1.0.jar;./lib/fop/xml-apis-ext.jar;./lib/fop/xmlgraphics-commons-1.3.1.jar;./lib/foxtrot.jar;./lib/gdal.jar;./lib/geojson-jackson-1.14.jar;./lib/gpsinput-0.5.3.jar;./lib/gpxparser.jar;./lib/graphstream/gs-core-1.3.jar;./lib/graphstream/gs-ui-1.3.jar;./lib/groovy-2.5.4.jar;./lib/gson-2.2.2.jar;./lib/guava-17.0.jar;./lib/httpclient-4.5.1.jar;./lib/httpcore-4.4.4.jar;./lib/iText-2.1.5.jar;./lib/imgscalr-lib-4.2.jar;./lib/ini4j-0.5.2.jar;./lib/j3dcore.jar;./lib/j3dutils.jar;./lib/jackson-annotations-2.11.2.jar;./lib/jackson-core-2.11.2.jar;./lib/jackson-databind-2.11.2.jar;./lib/jakarta-oro-core-2.1-dev-1.jar;./lib/jakarta-oro-perl5-2.1-dev-1.jar;./lib/javacsv.jar;./lib/javassist.jar;./lib/jchart2d-1.03.jar;./lib/jcommon-1.0.24.jar;./lib/jdic-linux/jdic_stub.jar;./lib/jdic-windows/jdic_stub.jar;./lib/jetty/jetty-6.0.2.jar;./lib/jetty/jetty-util-6.0.2.jar;./lib/jetty/servlet-api-2.5-6.0.2.jar;./lib/jfreechart-1.5.0.jar;./lib/jgoodies-common-1.7.0.jar;./lib/jgoodies-looks-2.5.3.jar;./lib/jh_image_filters.jar;./lib/jinput.jar;./lib/jmatio.jar;./lib/jmf.jar;./lib/jogl2/gluegen-rt-natives-linux-amd64.jar;./lib/jogl2/gluegen-rt-natives-linux-i586.jar;./lib/jogl2/gluegen-rt-natives-macosx-universal.jar;./lib/jogl2/gluegen-rt-natives-windows-amd64.jar;./lib/jogl2/gluegen-rt-natives-windows-i586.jar;./lib/jogl2/gluegen-rt.jar;./lib/jogl2/gluegen.jar;./lib/jogl2/jogl-all-natives-linux-amd64.jar;./lib/jogl2/jogl-all-natives-linux-i586.jar;./lib/jogl2/jogl-all-natives-macosx-universal.jar;./lib/jogl2/jogl-all-natives-windows-amd64.jar;./lib/jogl2/jogl-all-natives-windows-i586.jar;./lib/jogl2/jogl-all.jar;./lib/jogl2/org.jzy3d-0.9.jar;./lib/jsch-0.1.53.jar;./lib/jsoup-1.13.1.jar;./lib/jssc.jar;./lib/jtransform_thin.jar;./lib/jung/collections-generic-4.01.jar;./lib/jung/colt-1.2.0.jar;./lib/jung/jung-algorithms-2.0.1.jar;./lib/jung/jung-api-2.0.1.jar;./lib/jung/jung-graph-impl-2.0.1.jar;./lib/jung/jung-visualization-2.0.1.jar;./lib/jxlayer.jar;./lib/l2fprod-common-all.jar;./lib/libMsgSender.jar;./lib/libimc.jar;./lib/log4j-1.2.17.jar;./lib/marineapi-0.11.0.jar;./lib/metadata-extractor-2.11.0.jar;./lib/metadata-extractor-2.7.2.jar;./lib/miglayout-core-4.2.jar;./lib/miglayout-swing-4.2.jar;./lib/minimal-json-0.9.4.jar;./lib/netcdfAll-5.2.0.jar;./lib/opencv_440.jar;./lib/percentlayout.jar;./lib/reflections-0.9.9-RC1.jar;./lib/rhino.jar;./lib/rsyntaxtextarea-2.5.8.jar;./lib/rsyntaxtextarea/autocomplete-2.5.8.jar;./lib/rsyntaxtextarea/languagesupport-2.5.8.jar;./lib/rsyntaxtextarea/rsyntaxtextarea-2.5.8.jar;./lib/sanselan-0.97-incubator.jar;./lib/soap/activation.jar;./lib/soap/mail.jar;./lib/speech/cmu_time_awb.jar;./lib/speech/cmu_us_kal.jar;./lib/speech/cmudict04.jar;./lib/speech/cmulex.jar;./lib/speech/cmutimelex.jar;./lib/speech/en_us.jar;./lib/speech/freetts.jar;./lib/speech/jsapi.jar;./lib/sqlitejdbc-v056.jar;./lib/standby.jar;./lib/swingx.jar;./lib/vecmath.jar;./lib/vtk.jar;./lib/wms.jar;./lib/wrl/j3d-vrml97.jar;./lib/xchart-3.5.1.jar;./lib/xerces-2.7.1/resolver.jar;./lib/xerces-2.7.1/xercesImpl.jar;./lib/xerces-2.7.1/xercesSamples.jar;./lib/xerces-2.7.1/xml-apis.jar;./lib/xj3d/FastInfoset.jar;./lib/xj3d/aviatrix3d-all.jar;./lib/xj3d/dis.jar;./lib/xj3d/disxml.jar;./lib/xj3d/geoapi.jar;./lib/xj3d/j3d-org.jar;./lib/xj3d/jutils.jar;./lib/xj3d/uri.jar;./lib/xj3d/vlc_uri.jar;./lib/xj3d/xj3d-all.jar;./lib/xj3d/xj3d-cefx3d.jar;./lib/xj3d/xj3d-common.jar;./lib/xj3d/xj3d-config.jar;./lib/xj3d/xj3d-core.jar;./lib/xj3d/xj3d-eai.jar;./lib/xj3d/xj3d-ecmascript.jar;./lib/xj3d/xj3d-external-sai.jar;./lib/xj3d/xj3d-images.jar;./lib/xj3d/xj3d-j3d.jar;./lib/xj3d/xj3d-java-sai.jar;./lib/xj3d/xj3d-jaxp.jar;./lib/xj3d/xj3d-jsai.jar;./lib/xj3d/xj3d-net.jar;./lib/xj3d/xj3d-norender.jar;./lib/xj3d/xj3d-ogl.jar;./lib/xj3d/xj3d-parser.jar;./lib/xj3d/xj3d-render.jar;./lib/xj3d/xj3d-runtime.jar;./lib/xj3d/xj3d-sai.jar;./lib/xj3d/xj3d-sav.jar;./lib/xj3d/xj3d-script-base.jar;./lib/xj3d/xj3d-xml-util.jar;./lib/xj3d/xj3d-xml.jar;./lib/xmpcore-5.1.2.jar;./lib/xmpcore-5.1.3.jar;./lib/xuggle-xuggler-5.4.jar;./lib/zxing-3.2.1.jar;./lib/zxing-core-3.2.1.jar;plugins\*
set LIBRARYPATH=.;libJNI

if exist jre\bin ( 
    set JAVA_BIN_FOLDER=jre\bin\
) else (
    set JAVA_BIN_FOLDER= 
)

for /f "delims=" %%a in ('%JAVA_BIN_FOLDER%java -cp bin/neptus.jar pt.lsts.neptus.loader.helper.CheckJavaOSArch') do (@set JAVA_MACHINE_TYPE=%%a)

if %JAVA_MACHINE_TYPE%==windows-x86 (
  if %PROCESSOR_ARCHITECTURE%==x86 (
    if defined vtk.lib.dir (
      set VTKLIB=%vtk.lib.dir%
    ) else (
       set VTKLIB=%PROGRAMFILES%\VTK\bin
    )
  )
  else (
    if defined "vtk.lib.dir(x86)" (
      set VTKLIB=%vtk.lib.dir(x86)%
    ) else (
      if defined vtk.lib.dir (
        set VTKLIB=%vtk.lib.dir%
      ) else (
        set "VTKLIB=%PROGRAMFILES(x86)%\VTK\bin"
      )
    )
  )
) else (
  if defined vtk.lib.dir (
      set VTKLIB=%vtk.lib.dir%
  ) else (
    set VTKLIB=%PROGRAMFILES%\VTK\bin
  )
)

if %JAVA_MACHINE_TYPE%==windows-x86 (
  if %PROCESSOR_ARCHITECTURE%==x86 (
    if defined opencv.lib.dir (
      set OPENCVLIB=%opencv.lib.dir%
    ) else (
       set OPENCVLIB=%PROGRAMFILES%\opencv\bin
    )
  )
  else (
    if defined "opencv.lib.dir(x86)" (
      set OPENCVLIB=%opencv.lib.dir(x86)%
    ) else (
      if defined opencv.lib.dir (
        set OPENCVLIB=%opencv.lib.dir%
      ) else (
        set "OPENCVLIB=%PROGRAMFILES(x86)%\opencv\bin"
      )
    )
  )
) else (
  if defined opencv.lib.dir (
      set OPENCVLIB=%opencv.lib.dir%
  ) else (
    set OPENCVLIB=%PROGRAMFILES%\opencv\bin
  )
)

if %JAVA_MACHINE_TYPE%==windows-x86 (
  set LIBRARYPATH=.;libJNI\x86;libJNI\gdal\win\x86;libJNI;%VTKLIB%;%OPENCVLIB%
) else (
  set LIBRARYPATH=.;libJNI\x64;libJNI\gdal\win\x64;libJNI;%VTKLIB%;%OPENCVLIB%
)

set VMFLAGS="-XX:+HeapDumpOnOutOfMemoryError"

set OLDPATH=%PATH%
set PATH=%LIBRARYPATH%;%PATH%
start %JAVA_BIN_FOLDER%javaw.exe -Xms10m -Xmx1024m -Dj3d.rend=d3d -Dsun.java2d.d3d=true %VMFLAGS% -Djava.library.path="%LIBRARYPATH%" -cp %CLASSPATH% @MAIN_CLASS@ %1 %2 %3 %4 %5 %6 %7 %8 %9
set PATH=%OLDPATH%
