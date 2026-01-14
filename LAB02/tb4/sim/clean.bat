@echo off
echo Cleaning ModelSim temporary files...

:: 刪除所有以 wlft 開頭的臨時波形檔
del /f /q wlft*

:: 刪除標準的波形檔 (vsim.wlf)
del /f /q *.wlf

:: 刪除編譯目錄與日誌 (建議一併加入)
if exist work (rd /s /q work)
del /f /q transcript
del /f /q *.log

echo Cleanup complete.
pause