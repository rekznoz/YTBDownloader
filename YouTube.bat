@echo off
:seleccion
cls
echo.
echo 1 - Actualizar YouTube-DL
echo 2 - Descarga Musica
echo 3 - Descarga Videos
echo.
SET /P opcion="Elige una Opcion - "
echo.
if %opcion% == 1 (goto update)
if %opcion% == 2 (goto descargarmusic)
if %opcion% == 3 (goto descargarvideo)
echo.
:: ACTUALIZACION
:update
cls
echo [ UPDATER ]
echo.
echo Buscando Actualizaciones
echo.
yt-dlp -U
echo.
pause
echo.
goto seleccion
:: DESCARGAR VIDEO FORMATO MP4
:descargarvideo
cls
echo [ DESCARGADOR DE VIDEOS ]
echo.
echo Pega o Escribe aqui la URL :3
::echo Escribe 0 para volver al menu anterior C:
echo.
:reiniciarvideo
set /P Link="[URL] "
::if %Link% == 0 (goto seleccion)
echo Iniciando descarga
echo.
yt-dlp -o %%(title)s.%%(ext)s -i --ignore-config --hls-prefer-native %Link% --ffmpeg-location ".\ffmpeg\bin"
echo. 
pause
echo. 
goto reiniciarvideo
echo. 
:: DESCARGAR MUSICA EN FORMATO MP3
:descargarmusic
cls
echo [ DESCARGADOR DE MUSICA ]
echo.
echo Pega o Escribe aqui la URL :3
::echo Escribe 0 para volver al menu anterior C:
echo.
:reiniciarmusic
set /P Link="[URL] "
::if %Link% == 0 (goto seleccion)
echo Iniciando descarga
echo.
yt-dlp -o %%(title)s.%%(ext)s --extract-audio --audio-format mp3 %Link% --ffmpeg-location ".\ffmpeg\bin"
echo. 
pause
echo. 
goto reiniciarmusic
echo. 