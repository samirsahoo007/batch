:: Close all putty sessions just by double clicking the batch script
set loc=PUTTY
for /f "tokens=2 delims= " %%A in ('tasklist /v ^| findstr /i "%loc%"') do (taskkill /PID %%A)
