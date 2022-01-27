## Redirect All Output/Error Writes to a Same File
dir test.exe 1> myoutput.txt 2>&1

## Redirect output and error to different files
dir test.exe 1> myoutput.txt 2>myerror.txt

## Silencing Standard or Error Output Streams
dir test.exe 1> myoutput.txt 2>nul

## Redirect result to a file and check return code
dir test.exe 1> myoutput.txt 2>&1 & echo %errorlevel%
