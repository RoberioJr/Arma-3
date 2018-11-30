REM BY: ROBERIOJR
@echo off
Title Servidor DF AltisLife            Crashs: 0
set /a crashs+=0
color 9
cd C:\a3server\

  REM ## INICIO DO SCRIPT ##

  :inicio
  REM by RoberioJr
  color 9
  cls
  ping -n 2 127.0.0.1 >NUL
  set param='AltisLife'
  echo.
  echo Aplicando Parametros: %param%
  ping -n 2.5 127.0.0.1 >NUL
  echo Paramentros Para %param% Aplicados, Inicializando Servidor!
  ping -n 2 127.0.0.1 >NUL
  cls
  set data=%date:/=-%
  set hr=%TIME:~0,2%
  set mm=%TIME:~3,2%
  set ss=%TIME:~6,2%
  color 9
  cls
  echo.
  echo.
  echo.
  echo                          /===============================================================\
  echo.                                                                                    
  echo                               Inicializando Servidor Com Parametros Para %param%    
  echo.                                                                                    
  echo                          \===============================================================/                                    
  echo.
  echo                                                   Data:%data%
  echo                                                   Hora:%hr%:%mm%:%ss%
  echo.
  ping -n 5 127.0.0.1 >NUL
  cls
  echo.
  echo.
  echo                          /===============================================================\
  echo.                                                                                    
  echo                                   Servidor Iniciado Com Parametros Para %param% 
  echo.                                                                                    
  echo                          \===============================================================/                                    
  echo.
  echo                                                   Data:%data%
  echo                                                   Hora:%hr%:%mm%:%ss%
  echo.
  start "" /wait /high "arma3server_x64.exe" -port=2302 -malloc=tbbmalloc "-config=C:\a3server\SERVER\server.cfg" "-cfg=C:\a3server\SERVER\network.cfg" "-profiles=C:\a3server\SERVER" -name=SERVER -autoInit -filePatching "-servermod=@extDB3;@RJ_Life;@RJ_Fncs"
  goto crash
  
  
   
   :crash
   set /a tempo=10
   set /a crashs+=1
   Title Servidor DF AltisLife            Crashs: %crashs%
   goto crashtempo
   
   
   REM ## CRASH ##
 :crashtempo
cls
echo.
echo                        /=====================================================================\
echo.
echo                             O Servidor Crashou Ou Fechou... Abrindo O Servidor Novamente!
echo.
echo                        \=====================================================================/
color 0c
echo.
echo                   == LEIA: Para Desligar, Feche Essa Janela e em Seguida Feche A Janela Do Servidor. ==
echo.
echo                                              Iniciando Servidor Em %tempo% segundos
echo.
ping -n 2 127.0.0.1 >NUL
if %tempo%== 0 goto :inicio
cls
goto cron

 :cron
 set /a tempo+=-1
 goto crashtempo
   
   REM ## FIM DO SCRIPT ##
   
