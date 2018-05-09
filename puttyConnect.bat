:: Automation of opening putty sessions
:: It can be run by double clicking or from command line as below
:: puttyConnect.bat no_of_putty_sessions_you_want_to_open
:: By default it opens 6 putty sessions.
@ECHO OFF
set PUTTY="C:\Program Files (x86)\putty-0.65\PUTTY.EXE"
set count=%1
if [%count%]==[] set count=6
for /L %%n in (1,1,%count%) do (    
    echo %%n
    start "" %PUTTY% "username@hostname" -pw password
)
