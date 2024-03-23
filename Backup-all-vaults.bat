:: Alternative: https://github.com/gitwatch/gitwatch
@echo off


git add .
echo.

git status
echo.


set /P msg=Enter the commit message: 



git commit -am "%msg%"
echo.

git push
echo.

pause