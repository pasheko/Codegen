@echo off
Mode con cols=63 lines=10 & color 2F

echo -------------------------------------------------------------
echo -                     DVR Modo Debug                        -
echo -------------------------------------------------------------
echo -Pressione 1 Para verificar o status de debug               -
echo -Pressione 2 Para habiltar o debug                          - 
echo -Pressione 3 Para desabilitar o debug                       -
echo -Pressione 4 Exit                                           -
echo -------------------------------------------------------------

set /p type=
if %type%==1 goto a
if %type%==2 goto b
if %type%==3 goto c
if %type%==4 goto d

:a
cls 
echo Digite as informacoes do DVR
set /p ip=Endereco de IP--^> 
set /p port=Porta HTTP--^> 
set /p user=Usuario--^> 
set /p pwd=senha--^> 

Start "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://%user%:%pwd%@%ip%:%port%/cgi-bin/configManager.cgi?action=getConfig&name=InterimRDPrint"
cls 
goto start
:b

cls 
echo Digite as informacoes do DVR
set /p ip=Endereco de IP--^> 
set /p port=Porta HTTP--^> 
set /p user=Usuario--^> 
set /p pwd=senha--^> 

Start "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://%user%:%pwd%@%ip%:%port%/cgi-bin/configManager.cgi?action=setConfig&InterimRDPrint.AlwaysEnable=true"
cls 
goto start


:c

cls 
echo Digite as informacoes do DVR
set /p ip=Endereco de IP--^> 
set /p port=Porta HTTP--^> 
set /p user=Usuario--^> 
set /p pwd=senha--^> 


Start "Chrome" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://%user%:%pwd%@%ip%:%port%/cgi-bin/configManager.cgi?action=setConfig&InterimRDPrint.AlwaysEnable=false"

cls 
goto start

:d