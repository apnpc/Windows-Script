@ECHO OFF
rem Create a directory with the execution date as the folder name
    md E:\DBbak\%date:~0,4%-%date:~5,2%-%date:~8,2%
rem Connect to remote host
    net use \\192.168.15.121\c "qhcQrYdY3iQ87Z" /user:"administrator"
rem Cpoy files
    xcopy /e /h "\\192.168.0.7\DBbak" "E:\DBbak\%date:~0,4%-%date:~5,2%-%date:~8,2%"
rem  Delete files older than 7 days
    Forfiles /p E:\DBbak /s /d -7 /m *.* /c "cmd /c del /q /f @path"
