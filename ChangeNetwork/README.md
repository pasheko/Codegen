# ChangeNetwork

* Legenda 
* **ECHO** Escreve na tela
* **ECHO OFF** Oculta informações e o código executado pelo sistema.
* **ECHO ON** Exibe informações e o código executado pelo sistema.
* **ECHO.** Salta uma linha.
* **@ECHO** Faz com que o prompt fique oculto durante toda execução.
* **MODE CON COLS=Y LINES=X** Altera o modo de exibição do _"Prompt"_ na quantidade de colunas e linhas.
* **COLOR** Altera as cores do plano de fundo e texto do prompt
* **NETSH INTERFACE SET** Define parâmetros da interface de rede
**  netsh interface set interface "<nome da interface>" Disabled : Desabilta a interface declarada
**  netsh interface set interface "<nome da interface>" Enabled  : habilita a interface declarada
* **TIMEOUT** Aguarda um tempo "x" para prosseguir.
* **NET USE** No exemplo abaixo o endereço "Y" (\\sjo-file...) é montado na unidade de rede "X" (X:)
```
@echo off 

	MODE CON COLS=28 LINES=5
	COLOR 2f

	echo ---------------------------
	echo - Ativando a rede Interna -
	echo ---------------------------

netsh interface set interface "externa" Disabled && netsh interface set interface "interna" Enabled  >nul 2>&1


	TIMEOUT 6 >nul

	net use L: \\sjo-file-05\livre$  >nul 2>&1
	net use U: \\sjo-file-05\Usuarios$\do049344  >nul 2>&1
	net use V: \\sjo-file-05\deptos$  >nul 2>&1
	net use P: \\sjo-file-05\DepartamentosPLH$ >nul 2>&1

```
