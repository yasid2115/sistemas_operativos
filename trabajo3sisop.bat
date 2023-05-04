@echo off
set /p r="ruta: "
set /p d="dias: "
forfiles /p "%r%" /d -%d% /c "cmd /c echo @path"
forfiles /p "%r%" /d -%d% /c "cmd /c del @path"