:menu
@echo off
cls
echo ==================================
echo *      Veeam Service Manager     *
echo ==================================                     
echo.
echo            Options
echo  ==================================
echo * 1. Status                        * 
echo * 2. Stop                          *
echo * 3. Start                         *
echo * 4. Restart                       *
echo * 5. About                         *
echo * 6. Exit                          * 
echo  ==================================
set /p option="choose an option: " 
if %option% equ 0 goto operror
if %option% equ 1 goto option1
if %option% equ 2 goto option2
if %option% equ 3 goto option3
if %option% equ 4 goto option4
if %option% equ 5 goto option5
if %option% equ 6 goto option6
if %option% geq 7 goto operror

:option1
cls
echo ==================================
echo *     Status Veeam Services      *
echo ==================================
Powershell.exe -ExecutionPolicy Unrestricted -Command "& {Get-Service Veeam*}"
pause
goto menu

:option2
cls
echo ==================================
echo *      Stop Veeam Services       *
echo ==================================
Powershell.exe -ExecutionPolicy Unrestricted -Command "& {Get-Service Veeam* | Stop-Service}"
echo successful started 
pause
goto menu

:option3
cls
echo ==================================
echo *      Start Veeam Services      *
echo ==================================
Powershell.exe -ExecutionPolicy Unrestricted -Command "& {Get-Service Veeam* | Start-Service}"
echo successfully started
pause
goto menu

:option4
cls
echo ==================================
echo *     Restart Veeam Services     *
echo ==================================
Powershell.exe -ExecutionPolicy Unrestricted -Command "& {Get-Service Veeam* | Stop-Service}"
Powershell.exe -ExecutionPolicy Unrestricted -Command "& {Get-Service Veeam* | Start-Service}"
echo successfully restarted
pause
goto menu

:option5
cls
echo ==================================
echo *             About              *
echo ==================================
echo. 
echo.
echo ============================================ 
echo ==                                        ==
echo ==   program made by: Phelipe Garcia      ==
echo ==   github: github.com/phelipegarcia     ==
echo ==   Linkedin: in/phelipegarcia/          ==
echo ==   Telegram: https://t.me/phelipegarcia ==
echo ==                                        ==
echo ============================================
pause
goto menu

:option6
cls
exit

:operror
cls
echo ==================================
echo *    Option not available        *
echo ==================================
pause
goto menu