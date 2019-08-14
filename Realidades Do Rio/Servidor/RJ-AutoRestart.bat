REM By: RobérioJR
@echo off
set /a restarts=0
Title Servidor Auto Restart      Restarts:%restarts%
color 9

  REM ## INICIO DO SCRIPT ##
  :inicio
  color 9
  cls
  Title Servidor Auto Restart      Restarts:%restarts%
  set data=%date:/=-%
  set hr=%TIME:~0,2%
  set mm=%TIME:~3,2%
  set ss=%TIME:~6,2%
  set rein=%hr%:%mm%
  ping -n 2 127.0.0.1 >NUL
  if %rein%== 0:00 goto :deslig
  if %rein%== 6:00 goto :deslig
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
  ping -n 2 127.0.0.1 >NUL
  goto inicio


 :variaveis
 set /a restarts+=1
 ping -n 301 127.0.0.1 >NUL
 goto inicio
 
 
   :deslig
   echo.
   echo   ::DESLIGANDO SERVIDOR::
   cls
   ping -n 3 127.0.0.1 >NUL
   taskkill /f /im "arma3server.exe"
   taskkill /f /im "arma3server_x64.exe"
   ping -n 3 127.0.0.1 >NUL
   taskkill /f /im "arma3server.exe"
   taskkill /f /im "arma3server_x64.exe"
   goto variaveis
   
  REM ## FIM DO SCRIPT ## 