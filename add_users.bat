@echo off
chcp 65001
set nazwaprogramu=Prosty program do obsługi kont lokalnych.

:menu
cls
color 1e
echo  (c) 2019 Jex Corporation. Wszelkie prawa zastrzeżone.
echo.
echo  %nazwaprogramu%
echo.
echo  Wybierz:
echo  ========
echo    1 - Tworzenie kont użytkownikow lokalnych w grupie Użytkownicy.
echo    2 - Usównaie kont użytkownikow lokalnych.
echo    Q - Wyjście.
echo.
set /p odp=">> "
if /I %odp% equ 1 goto 1
if /I %odp% equ 2 goto 2
if /I %odp% equ q goto q
goto help

:1
cls
echo Tworzenie kont lokalnych.
net user Klasa1 pozioma /add
net user Klasa2 poziomb /add
net user Klasa3 poziomc /add
net user Klasa4 poziomd /add
net user Klasa5 poziome /add
net user Klasa6 poziomf /add
net user Klasa7 poziomg /add
net user Klasa8 poziomh /add
NET LOCALGROUP "Użytkownicy" Klasa1 /add
NET LOCALGROUP "Użytkownicy" Klasa2 /add
NET LOCALGROUP "Użytkownicy" Klasa3 /add
NET LOCALGROUP "Użytkownicy" Klasa4 /add
NET LOCALGROUP "Użytkownicy" Klasa5 /add
NET LOCALGROUP "Użytkownicy" Klasa6 /add
NET LOCALGROUP "Użytkownicy" Klasa7 /add
NET LOCALGROUP "Użytkownicy" Klasa8 /add
net user Klasa1
net user Klasa2
net user Klasa3
net user Klasa4
net user Klasa5
net user Klasa6
net user Klasa7
net user Klasa8
echo Konta z hasłami zostały utworzone w grupie Użytkownicy.
pause
:menu

:2
cls
echo Usównie kont lokalnych.
net user Klasa1 pozioma /delete
net user Klasa2 poziomb /delete
net user Klasa3 poziomc /delete
net user Klasa4 poziomd /delete
net user Klasa5 poziome /delete
net user Klasa6 poziomf /delete
net user Klasa7 poziomg /delete
net user Klasa8 poziomh /delete
echo Konta zostały usuniete.
pause
:menu

:help
cls
goto menu


:q
cls
echo Wychodzę z programu.
timeout /t 05
exit
