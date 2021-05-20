@echo off
setlocal EnableDelayedExpansion
title github.com/SegoCode
cls
echo loading...

set logo1=  [48;5;202m  [48;5;202m  [48;5;202m  [48;5;202m  [48;5;202m  [48;5;202m  [m  [48;5;41m  [48;5;41m  [48;5;41m  [48;5;41m  [48;5;41m  [48;5;41m  [m
set logo2=  [48;5;32m  [48;5;32m  [48;5;32m  [48;5;32m  [48;5;32m  [48;5;32m  [m  [48;5;220m  [48;5;220m  [48;5;220m  [48;5;220m  [48;5;220m  [48;5;220m  [m

:: Do not be alarmed, this is powershell script encoded in base64, decode by yourself
:: How to decode: [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String(' BASE 64 CODE HERE '))

set getDiskEncodeps1= CgBnAHcAbQBpACAAVwBpAG4AMwAyAF8ATABvAGcAaQBjAGEAbABEAGkAcwBrACAALQBGAGkAbAB0AGUAcgAgACIAQwBhAHAAdABpAG8AbgA9ACcAQwA6ACcAIgB8ACUAewAkAGcAPQAxADAANwAzADcANAAxADgAMgA0ADsAWwBpAG4AdABdACQAZgA9ACgAJABfAC4ARgByAGUAZQBTAHAAYQBjAGUALwAkAGcAKQA7AFsAaQBuAHQAXQAkAHQAPQAoACQAXwAuAFMAaQB6AGUALwAkAGcAKQA7AFcAcgBpAHQAZQAtAEgAbwBzAHQAIAAoACQAdAAtACQAZgApACwAJABmAH0ACgA=
:: gwmi Win32_LogicalDisk -Filter "Caption='C:'"|%{$g=1073741824;[int]$f=($_.FreeSpace/$g);[int]$t=($_.Size/$g);Write-Host ($t-$f),$f}


set getRamEncodeps1= JABGAHIAZQBlAFIAYQBtACAAPQAgACgAWwBtAGEAdABoAF0AOgA6AFQAcgB1AG4AYwBhAHQAZQAoACgARwBlAHQALQBDAGkAbQBJAG4AcwB0AGEAbgBjAGUAIABXAGkAbgAzADIAXwBPAHAAZQByAGEAdABpAG4AZwBTAHkAcwB0AGUAbQApAC4ARgByAGUAZQBQAGgAeQBzAGkAYwBhAGwATQBlAG0AbwByAHkAIAAvACAAMQBLAEIAKQApADsAIAANAAoAJABUAG8AdABhAGwAUgBhAG0AIAA9ACAAKABbAG0AYQB0AGgAXQA6ADoAVAByAHUAbgBjAGEAdABlACgAKABHAGUAdAAtAEMAaQBtAEkAbgBzAHQAYQBuAGMAZQAgAFcAaQBuADMAMgBfAEMAbwBtAHAAdQB0AGUAcgBTAHkAcwB0AGUAbQApAC4AVABvAHQAYQBsAFAAaAB5AHMAaQBjAGEAbABNAGUAbQBvAHIAeQAgAC8AIAAxAE0AQgApACkAOwANAAoAJABVAHMAZQBkAFIAYQBtACAAPQAgACQAVABvAHQAYQBsAFIAYQBtACAALQAgACQARgByAGUAZQBSAGEAbQA7AA0ACgAkAEYAcgBlAGUAUgBhAG0AUABlAHIAYwBlAG4AdAAgAD0AIAAoACQARgByAGUAZQBSAGEAbQAgAC8AIAAkAFQAbwB0AGEAbABSAGEAbQApACAAKgAgADEAMAAwADsADQAKACQARgByAGUAZQBSAGEAbQBQAGUAcgBjAGUAbgB0ACAAPQAgACIAewAwADoATgAwAH0AIgAgAC0AZgAgACQARgByAGUAZQBSAGEAbQBQAGUAcgBjAGUAbgB0ADsADQAKACQAVQBzAGUAZABSAGEAbQBQAGUAcgBjAGUAbgB0ACAAPQAgACgAJABVAHMAZQBkAFIAYQBtACAALwAgACQAVABvAHQAYQBsAFIAYQBtACkAIAAqACAAMQAwADAAOwANAAoAJABVAHMAZQBkAFIAYQBtAFAAZQByAGMAZQBuAHQAIAA9ACAAIgB7ADAAOgBOADAAfQAiACAALQBmACAAJABVAHMAZQBkAFIAYQBtAFAAZQByAGMAZQBuAHQAOwANAAoAJABmAGkAbgBhAGwAPQAgACQAVQBzAGUAZABSAGEAbQAuAFQAbwBTAHQAcgBpAG4AZwAoACkAIAArACAAIgBNAEIAIAAvACAAIgAgACsAIAAkAFQAbwB0AGEAbABSAGEAbQAuAFQAbwBTAHQAcgBpAG4AZwAoACkAIAArACAAIgBNAEIAIAAiACAAKwAgACIAKAAiACAAKwAgACQAVQBzAGUAZABSAGEAbQBQAGUAcgBjAGUAbgB0AC4AVABvAFMAdAByAGkAbgBnACgAKQAgACsAIAAiACUAIgAgACsAIAAiACkAIgA7AA0ACgBXAHIAaQB0AGUALQBIAG8AcwB0ACAAJABmAGkAbgBhAGwA
:: $FreeRam = ([math]::Truncate((Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1KB));
:: $TotalRam = ([math]::Truncate((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1MB));
:: $UsedRam = $TotalRam - $FreeRam;
:: $FreeRamPercent = ($FreeRam / $TotalRam) * 100;
:: $FreeRamPercent = "{0:N0}" -f $FreeRamPercent;
:: $UsedRamPercent = ($UsedRam / $TotalRam) * 100;
:: $UsedRamPercent = "{0:N0}" -f $UsedRamPercent;
:: $final= $UsedRam.ToString() + "MB / " + $TotalRam.ToString() + "MB " + "(" + $UsedRamPercent.ToString() + "%" + ")";
:: Write-Host $final


:: Windows version
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-CimInstance Win32_OperatingSystem).Caption;"`) do Set version=%%a
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-CimInstance Win32_OperatingSystem).OSArchitecture;"`) do Set bits=%%a
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-CimInstance  Win32_OperatingSystem).Version;"`) do Set kernel=%%a

::CPU
for /f "usebackq delims=" %%a in (`powershell -Command "(((Get-CimInstance Win32_Processor).Name) -replace '\s+', ' ');"`) do Set cpu=%%a

::GPU
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-CimInstance Win32_DisplayConfiguration).DeviceName;"`) do Set gpu=%%a

::Board
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-CimInstance Win32_BaseBoard | Select-Object Manufacturer, Product).Product;"`) do Set moboP=%%a
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-CimInstance Win32_BaseBoard | Select-Object Manufacturer, Product).Manufacturer;"`) do Set moboM=%%a

::RAM
for /f "usebackq delims=" %%a in (`PowerShell -NoProfile -EncodedCommand "%getRamEncodeps1%"`) do Set ram=%%a

::Disk
for /F "usebackq tokens=1,2" %%f IN (`PowerShell -NoProfile -EncodedCommand "%getDiskEncodeps1%"`) DO ((SET U=%%f)&(SET F=%%g))
set /a total=%F%+%U%

::Names
for /f "usebackq delims=" %%a in (`powershell -Command "[System.Net.Dns]::GetHostName();"`) do Set userinfo=%%a
for /f "usebackq delims=" %%a in (`powershell -Command "$env:USERNAME"`) do Set username=%%a

::Screen
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-WmiObject -Class Win32_VideoController).CurrentRefreshRate"`) do Set hz=%%a
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-WmiObject -Class Win32_VideoController).CurrentHorizontalResolution"`) do Set hozrs=%%a
for /f "usebackq delims=" %%a in (`powershell -Command "(Get-WmiObject -Class Win32_VideoController).CurrentVerticalResolution"`) do Set verrs=%%a


:: UpTime
for /f %%a in ('WMIC OS GET lastbootuptime ^| find "."') DO set DTS=%%a 
set boot=%DTS:~0,4%-%DTS:~4,2%-%DTS:~6,2%  %DTS:~8,2%:%DTS:~10,2%

IF "%1"=="copland" GOTO navi


mode con:cols=110 lines=18
cls
echo [m 
echo %logo1%      [1;34m%username%[m@[1;34m%userinfo%[m        
echo %logo1%      ---------------------
echo %logo1%      [1;34mOS[m: %version% %bits%
echo %logo1%      [1;34mKernel[m: %kernel%
echo %logo1%      [1;34mCPU[m: %cpu% 
echo [m                                  [1;34mMotherboard[m: %moboM% %moboP% 
echo %logo2%	  [1;34mRAM[m: %ram%  
echo %logo2%      [1;34mDisk[m:  %U%GB / %total%GB  (C:)
echo %logo2%      [1;34mGPU[m: %gpu%
echo %logo2%      [1;34mResolution[m: %hozrs% x %verrs% (%hz% Hz)
echo %logo2%      [1;34mBoot[m: %boot%
echo:

pause > nul
exit

:navi
mode con:cols=115 lines=23
cls
set BL=[34m
echo %BL%                                                                      
echo %BL%                              ..::::::..                              
echo %BL%                          .:-============-:.                          
echo %BL%             .-==.      :-====-::....::--===-:      .==-.             [1;34mLain[m@[1;34mNAVI-DESKTOP[m 
echo %BL%           .-===-.    .-===:.            .:===-.    .-===-.           ---------------------
echo %BL%         .-===-.     :===-.                .:===:     .-===-.         [1;34mOS[m: Copland OS Enterprise
echo %BL%       .-===-.      .===:         ..         :===.      .-===-.       [1;34mKernel[m: %kernel%
echo %BL%      :===-.        -==-       :-====-:       :==-        .-===:      [1;34mCPU[m: %cpu%
echo %BL%      -==:         .===.      :========:      .===.         :==-      [1;34mMotherboard[m: %moboM% %moboP%
echo %BL%      :===:.       .===.      :========-      .===.       .:===:      [1;34mRAM[m: %ram%
echo %BL%       .-===:.      ===:      .-======-.      :===.     .:===-.       [1;34mDisk[m:  %U%GB / %total%GB  (C:)
echo %BL%         .-===:.    :===.       .::::.       .===:    .:===-.         [1;34mGPU[m: %gpu%
echo %BL%       ..  .-===:.   -===.                  .-==-    :===-:  ..       [1;34mResolution[m: %hozrs% x %verrs% (%hz% Hz)
echo %BL%     :====.  .-==.    :===-.              .-===:    .==-.  .-===:     [1;34mBoot[m: %boot%
echo %BL%     -====:            .-===-::.       .:-===-.            :====-     
echo %BL%      :::.               .:-====.     ====-:.               .:::      
echo %BL%                            .===.    .===.                                                        
echo %BL%                            .===.    .===.                            
echo %BL%                   .:::.    .===.    .===.     :::.                   
echo %BL%                    -==-.  .-==-      -==-.  .-===.                   
echo %BL%                    .-========-.      .-========-.                    
echo %BL%                      .::--::.          .::--::.           
pause > nul


