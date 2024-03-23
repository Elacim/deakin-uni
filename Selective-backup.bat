:: Alternative: https://github.com/gitwatch/gitwatch
@echo off

dir
echo.
set /P file=Add a file/directory: 

git add %file%
echo.

git status
echo.


set /P msg=Enter the commit message: 



git commit -am "%msg%"
echo.

git push
echo.

pause