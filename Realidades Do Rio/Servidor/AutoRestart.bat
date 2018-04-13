REM By: RobérioJR
@echo off
set restarts+=0
Title Servidor BOPE Auto Restart          Restarts:%restarts%
color 9

  REM ## INICIO DO SCRIPT ##
  :inicio
  color 9
  cls
  Title Servidor BOPE Auto Restart          Restarts:%restarts%
  set data=%date:/=-%
  set hr=%TIME:~0,2%
  set mm=%TIME:~3,2%
  set ss=%TIME:~6,2%
  set rein=%hr%:%mm%
  if %rein%== 00:00 goto :deslig
  if %rein%== 06:00 goto :deslig
  if %rein%== 12:00 goto :deslig
  if %rein%== 18:00 goto :deslig
  echo.
  echo.
  echo.
  echo                    /===============================================================\
  echo.                                                                                    
  echo                                  O Reinicio Automatico Esta Habilitado!     
  echo.                                                                                    
  echo                    \===============================================================/                                    
  echo.
  echo                                             Data:%data%
  echo                                             Hora:%hr%:%mm%:%ss%
  echo.
  ping -n 19 127.0.0.1 >NUL
  goto inicio


 :variaveis
 set restarts+=1
 ping -n 46 127.0.0.1 >NUL
 goto inicio
 
 
   :deslig
   echo.
   echo   ::DESLIGANDO SERVIDOR::
   cls
   ping -n 3 127.0.0.1 >NUL
   taskkill /f /im "arma3server.exe"
   goto variaveis
   
  REM ## FIM DO SCRIPT ## 