@echo off

:: 切换到批处理文件所在目录
cd /d "%~dp0"

:: 检测是否以管理员权限运行
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 请以管理员权限运行此批处理文件！
    pause
    exit /b 1
)

set /p choice=请输入UUID：

:: 执行命令
AMIDEWINx64.EXE /su %choice% AUTO

pause