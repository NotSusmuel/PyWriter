@echo off

:start
title PyWriter
cls
pip install -r .\src\requirements.txt
cls

:lang_selection
color a
set /P Lang=What is your language(type help for a list)?     
if %Lang%==help goto help
if %Lang%==AT goto at
if %Lang%==CH goto ch
if %Lang%==DE goto de
if %Lang%==GB goto gb
if %Lang%==IT goto it
if %Lang%==SI goto si
if %Lang%==US goto us
echo please select a language or type help
goto :lang_selection

:help
echo OEsterreich = AT
echo Schweiz = CH
echo Deutschland = DE
echo Great Britain = GB
echo Italia = IT
echo svizzero italiano = SI
echo United States = US
goto lang_selection

:at
python .\src\Pywriter_AT.py
goto end

:ch
python .\src\Pywriter_CH.py
goto end

:de
python .\src\Pywriter_DE.py
goto end

:gb
python .\src\Pywriter_GB.py
goto end

:it
python .\src\Pywriter_IT.py
goto end

:si
python .\src\Pywriter_SI.py
goto end

:us
python .\src\Pywriter_US.py
goto end

:end
cls
goto lang_selection