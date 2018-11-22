:start

@echo off
Mode con cols=63 lines=10 & color 2F
echo -------------------------------------------------------------
echo -                  Calculo de HD e Redeplus                 -
echo -------------------------------------------------------------
echo -Pressione 1 Calcular armazenamento necessario para 24 horas-
echo -Pressione 2 Calcular consumo de rede                       -
echo -Pressione 3 Sobre                                          -
echo -Pressione 4 Exit                                           -
echo -------------------------------------------------------------

set /p type=
if %type%==1 goto a
if %type%==2 goto b
if %type%==3 goto c
if %type%==4 goto d

 :a
@echo off
cls
@echo off

Mode con cols=63 lines=10 & color 2F
echo -------------------------------------------------------------
echo -                  Calculo de HD plus                       -
echo -------------------------------------------------------------
echo -Calcular armazenamento necessario para 24 horas de gravacao-
echo -------------------------------------------------------------
@echo off 

set /p bps2=Bit rate (Kbps): --^> 
set /p cam=Quantidade de Cameras: --^>
set /p dia=Quantidade de dias: --^>
@echo
cls 
set /a Answer=(((%bps2%/8)*3600*24)/1024)*%cam%*%dia%)
set /a Answer2= %Answer%/1024
set /a Answer3= %Answer2%/1024
@echo off
Mode con cols=76 lines=10 & color 2F
@echo.
echo ----------------------------------------------------------------------------
echo -                            Calculo de HD plus                            -
echo ----------------------------------------------------------------------------
echo   O Consumo em HD para %dia% dias gravando %cam% cameras durante 24 horas e:  
echo                        %Answer% MB ou %Answer2% GB ou %Answer3% TB                   
echo ----------------------------------------------------------------------------
@echo.
echo                    Pressione qualquer tecla para voltar
pause >nul
goto start


 :b
cls
Mode con cols=67 lines=5 & color 2F
echo Para Calcular consumo de rede, prencha as informacoes solicitadas:
@echo. 
set /p bps=Bit rate (Kbps): --^> 
set /p qc= Quantidade de Cameras: --^>

@echo off
set /a Answer=%bps%*qc%
@echo off
cls
Mode con cols=65 lines=9 & color 2F
@echo. 
echo ------------------------------------------------------------------
echo -                      Calculo de Rede plus                      -
echo ------------------------------------------------------------------
echo    O consumo em rede de %qc% cameras e %Answer% Kbps  
echo  %Answer% Kbps de Upload onde o gravador esta instalado
echo  %Answer% Kbps de Download de onde será feito o acesso. 
echo ------------------------------------------------------------------
@echo. 

echo     Pressione qualquer tecla para voltar
pause >nul
goto start



 :c
@echo off
Mode con cols=47 lines=11 & color 1F

@echo.
echo ----------------------------------------------
echo -    Software Calculo de HD e Rede Plus      -
echo -        Versao 0.4                          -
echo ----------------------------------------------
echo - Desenvolvido por Douglas Steinbach Pacheco -
echo ----------------------------------------------
@echo. 
@echo.

echo     Pressione qualquer tecla para voltar
pause >nul
goto start

 :d
