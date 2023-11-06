@echo off
setlocal enabledelayedexpansion

set "outputFile=output.txt"
del "%outputFile%" 2>nul

rem Loop through all meta.cpp files
for /r %%i in (meta.cpp) do (
    set "metaFile=%%i"
    
    rem Check if the file exists
    if exist "!metaFile!" (
        rem Extract publishedid value from meta.cpp file
        for /f "tokens=2 delims==;" %%a in ('type "!metaFile!" ^| find "publishedid"') do (
            set "publishedid=%%a"
            
            rem Output to text file with folder name
            echo Published ID: !publishedid! - Folder: %%~dpi, >> "%outputFile%"
        )
    ) else (
        echo Error: File not found - !metaFile!
    )
)

endlocal