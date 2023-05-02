
@echo off

:menu
echo escoja la opcion que desea realizar
echo 1 = copiar directorio 
echo 2 = eliminar directorio 
echo 3 = salir 

set /p opcion=
if %opcion%==1 goto :copiar
if %opcion%==2 goto :eliminar 
if %opcion%==3 goto :salir

:copiar
set /p origen= "escriba la direccion de origen que desea copiar: "
set /p destino= "escriba la direccion del destino donde lo desea copiar: "
xcopy /e /i "%origen%" "%destino%\%date:~5,2%-%date:~8,2%-%date:~11,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%"
echo operacion exitosa 
goto :menu

:eliminar 
set /p ruta= "escribe la ruta del direcctorio que desea eliminar: "
rd /s /q "%ruta%"
echo  operacion exitosa 
goto :menu

:salir 
echo operacion finalizada 
exit 
