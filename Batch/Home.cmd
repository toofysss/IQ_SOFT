@echo off
chcp 65001  >nul 2>&1
setlocal EnableDelayedExpansion
set "isAdmin=false"

REG QUERY "HKU\S-1-5-19" >nul 2>&1
if %errorlevel% == 0 set "isAdmin=true"

if "%isAdmin%" == "false" (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

@set masver=2.6
@setlocal DisableDelayedExpansion
mode 76,30
color 07
title IRAQ SOFT

::::::::::::::::::::::::::::::::: For ALL Info :::::::::::::::::::::::::::::::::::::::::::
set "desktopPath=%USERPROFILE%\Downloads"
::::::::::::::::::::::::::::::::: For ALL Info :::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::: For Troubleshoot :::::::::::::::::::::::::::::::::::::::::::
set "localePath=%USERPROFILE%\AppData\Local\IRAQSOFT\"
 
::::::::::::::::::::::::::::::::: For Troubleshoot :::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::: For Activity :::::::::::::::::::::::::::::::::::::::::::
set "Exclution_Remotly_Loc=C:\Program Files\RDP Wrapper"
set "Exclution_Sip_Loc=C:\Sip"
set SUBNET_MASK=255.255.255.0
set REST_App_Url=https://raw.githubusercontent.com/toofysss/IQ_SOFT/main/Batch/REST_App.sql
set SPEEDO_App_Url=https://raw.githubusercontent.com/toofysss/IQ_SOFT/main/Batch/SPEEDO_App.sql

::::::::::::::::::::::::::::::::: For Activity :::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: For SQL SERVER Info :::::::::::::::::::::::::::::::::::::::::::
set SQL_Connection_SPEEDDO=.\SALES_DEV -U sa -P 12345 -d SPEEDOO_DB
set SQL_Connection_SPEEDDO_REST=.\SALES_DEV -U sa -P 12345 -d RESTAURANT_DB
set Connection=
set CoinfirmPassowrd="spo"
set "PowerShellScript=Speedo.ps1"
set /a "RandomNumber=%random%"
for /f "tokens=2 delims==" %%i in ('"wmic os get localdatetime /value"') do set dt=%%i
set yyyy=%dt:~0,4%
set mm=%dt:~4,2%
set dd=%dt:~6,2%
set date=%yyyy%-%mm%-%dd%
set Backup_Loc="C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SALES_DEV\MSSQL\Backup\Speedo-%date%-%RandomNumber%.bak"

set Script_To_Factory=https://raw.githubusercontent.com/toofysss/IQ_SOFT/main/Batch/Factory.sql
::::::::::::::::::::::::::::::::: For SQL SERVER Info :::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::: For Database Info :::::::::::::::::::::::::::::::::::::::::::
set "Donwload_Backup=C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SALES_DEV\MSSQL\Backup"
set Empty_Database_Url=https://github.com/toofysss/IQ_SOFT/raw/main/Batch/Empty.BAK
set Market_Database_Url=https://github.com/toofysss/IQ_SOFT/raw/main/Batch/Market.BAK
set pharmacy_Database_Url=https://github.com/toofysss/IQ_SOFT/raw/main/Batch/pharmacy.bak

::::::::::::::::::::::::::::::::: For Database Info :::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::: For Download Info :::::::::::::::::::::::::::::::::::::::::::
set Speedo_Full_Url=https://www.dropbox.com/scl/fi/jrrg2xtnw60a7a132zhx3/SPEEDOO-POS-1.3.7.6-FULL.exe?rlkey=25a6t62fis84n2daisvk8mr1p&dl=1
set Speedo_Full_File=SPEEDOO-POS-1.3.7.6-FULL.exe
set Speedo_Update_Url=https://www.dropbox.com/scl/fi/r03a6ujar6lwp09s2r3pm/SPEEDOO-POS-1.3.7.6-UPDATE.exe?rlkey=kae6meq14d5w0e19h9fra9ed3&e=2&dl=0
set Speedo_Update_File=SPEEDOO-POS-1.3.7.6-UPDATE.exe
@REM Speedo Rest Url
set Speedo_Rest_Update_Url=https://www.dropbox.com/scl/fi/gnrjofsyk7kx80mcst0da/Speedoo-REST-3.0.5.3-UPDATE.exe?rlkey=yr29c8l7ula7gjzedq7zzjt01&st=rg27jrws&dl=0
set Speedo_Rest_Update_File=Speedoo REST 3.0.5.3 UPDATE.exe
set Speedo_Rest_Full_Url=https://www.dropbox.com/s/mzb59s2ypjung62/Speedoo%20APP%203.0.3.3%20FULL.exe?dl=0
set Speedo_Rest_Full_File=Speedoo REST 3.0.3.3_FULL.exe
@REM SQL Url
set SQL_Url=https://www.dropbox.com/scl/fi/fitraeunq2m7bx0pff31y/SQLEXPRWT_x86_ENU-2.exe?rlkey=wwj2f0pbd621gnkl0od4naea9&st=85hiov5f&dl=0
set SQL_File=SQLEXPRWT_x86_ENU-2.exe
@REM Aman Url
set Aman_Url=https://www.dropbox.com/scl/fi/mmb09081w93d4o11b6q6o/AMAN_AutoBackup.exe?rlkey=yi81hsbjsmml5zwjjmfvr78cc&st=kcd1p6d8&dl=0
set Aman_File=AMAN_AutoBackup.exe
@REM SUPER POINT Url
set Super_Point_Url=https://www.dropbox.com/scl/fi/rfo30ucu1houbopun4ydw/Point-Super3.0.0.2.exe?rlkey=qpw90pr45jiu9aw16zo3t0kkt&st=rg3uyk1z&dl=0
set Super_Point_File=Point_Super3.0.0.2.exe
@REM Point Charge Url
set Point_Charge_Url=https://www.dropbox.com/scl/fi/a59xynftova49frvqb2x1/Shipping-Plus-Server-With-Out-SQL2.2.0.0.exe?rlkey=ua3xvu6nwgy7c6fqsb5omcchi&e=1&st=ebai37wg&dl=0
set Point_Charge_File=Shipping_Plus_Server_With_Out_SQL2.2.0.0.exe
@REM POS Url
set POS_Url=https://www.dropbox.com/scl/fi/g8jjxnuqicn6mf3c63yly/POS-SERVER.exe?rlkey=7pqhg0u62ct8w7xmjqpx42ooq&e=1&st=3ctgbwml&dl=0
set POS_File=POS_3.9.2_Server.exe

@REM SIP Url
set SIP_Url=https://www.dropbox.com/scl/fi/iocnpblkxb13z8jzf8e2u/Sip.exe?rlkey=rvrixro5fzit16pbvwpyjq6bh&st=iy4vnvog&dl=0
set SIP_File=Sip.exe
@REM Remotly Url
set Remotly_Url=https://www.dropbox.com/scl/fi/hitpdam3cpyf5oq2om5q7/remotly2024.rar?rlkey=jv8ga54xmei2y42thtjqcy6b5&e=1&dl=0
set Remotly_File=remotly-new.rar
::::::::::::::::::::::::::::::::: For Download Info :::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::: For Printer Info :::::::::::::::::::::::::::::::::::::::::::
@REM Canon_6030 Url
set Canon_6030_Url=https://www.dropbox.com/scl/fi/m2tznhch5h3q3t9c1aeti/LBP6030_V2111_WP_EN.exe?rlkey=3moh1m0vvk05bres72ygpglrc&st=s0km86rh&dl=0
set Canon_6030_File=LBP6030_V2111_WP_EN.exe
@REM Thermal printer
set POS_Printer_Url=https://www.dropbox.com/scl/fi/h3g3y0s19ael2fhl2z2kg/Thermal_printer.exe?rlkey=xcueh3f0jcm8ub9ia3sakp431&st=788nqj3v&dl=0
set POS_Printer_File=Thermal_printer.exe
@REM BARCODE printer
set BARCODE_Url=https://www.dropbox.com/scl/fi/jnpe5h17kqu0w1ahf7cqa/4BARCODE_2019.1_M-2.exe?rlkey=n821h1heahvysemcl98k7imod&st=ht6hl92f&dl=0
set BARCODE_File=4BARCODE_2019.1_M-2.exe
@REM IPOS JJ
set IPOS_JJ_Url=https://www.dropbox.com/scl/fi/oflbr8m52bjr7ilrw5mfh/JJ-Drive-V7.17.exe?rlkey=tgge9ayjq25hp05cihg7zk5lv&st=5bczxlv3&dl=0
set IPOS_JJ_File=JJ-Drive-V7.17.exe
@REM POS 80 Series
set POS_80_Series_Url=https://www.dropbox.com/scl/fi/lh17yiq8squudlgw9d86i/POS-80-Series.exe?rlkey=60ii8te041ssix5nnjw3noexu&st=n69hmf7t&dl=0
set POS_80_Series_File=POS-80-Series.exe
@REM AG POS Printer
set AG_POS_Url=https://www.dropbox.com/scl/fi/iyai1v98115j30rgg0dux/AG_Printer.exe?rlkey=ebpsa8h8twq9isj96lrz6xcpi&st=q1q5reis&dl=0
set AG_POS_File=AG_Printer.exe
@REM ZJ_Printer
set ZJ_Url=https://www.dropbox.com/scl/fi/iimc78o9ow8uupi9hoqtf/ZJ-Printer.exe?rlkey=cgbbzhbebh4ha4hj7sfsq0mrx&st=k0e5khaw&dl=0
set ZJ_File=ZJ-Printer.exe
@REM XPrinter
set xpriner_Url=https://www.dropbox.com/scl/fi/cqt1vbk36ne7byxwih95l/XPrinter.exe?rlkey=4dkwwg36y948qo6ufjib1e4oj&st=5p1naka3&dl=0
set xpriner_File=XPrinter.exe
@REM HPRT Printer
set HPRT_Url=https://www.dropbox.com/scl/fi/mcc04owwq75jfaa9dj4na/HPRT_2022.1.exe?rlkey=yqfs4w0hp4hwhixmlas4mebbf&st=aylovokd&dl=0
set HPRT_File=HPRT_2022.1.exe
@REM Printer Tool
set Printer_Tool_Url=https://www.dropbox.com/scl/fi/w36cj9klh00ginyhp21wq/printer-tools.rar?rlkey=oj1imyo9hvenqf7txcyp6nqcj&st=ejiwbu1o&dl=0
set Printer_Tool_File=printer-tools.rar

@REM Xprinter Barcode
set Xprinter_Barcode_Url=https://www.dropbox.com/scl/fi/h18dsmwm3br0x5qja4u8y/Xprinter_2024.2.exe?rlkey=lbobracdddhfw5706myj9jb16&st=rdbgbzp1&dl=0
set Xprinter_Barcode_File=Xprinter_2024.2.exe

@REM Xprinter Pos
set Xprinter_Pos_Url=https://www.dropbox.com/scl/fi/ubc34mg992027q5i097uh/XPrinter-Driver-Setup-V8.2.exe?rlkey=vftaurbhff2xsc8txaxtc76ka&e=1&st=0v0i0ikg&dl=0
set Xprinter_Pos_File=XPrinter-Driver-Setup-V8.2.exe

@REM POSBANK A7
set POSBANK_A7_Url=https://www.dropbox.com/scl/fi/4xu9lwaoxfgp93massp14/EasySet_MiniPrinter_WD_win7_8_v2.3.3.exe?rlkey=nx7decmhcb0dm05kty05twbwx&st=34x3fwbb&dl=0
set POSBANK_A7_File=EasySet_MiniPrinter_WD_win7_8_v2.3.3.exe
::::::::::::::::::::::::::::::::: For Printer Info :::::::::::::::::::::::::::::::::::::::::::

:MainMenu
color 07
cls
echo: 
echo: 
echo:                                IRAQ SOFT
echo: 
echo:                                Main Menu
echo: 
echo:                   [1] SQL SERVER        [2] Activity            
echo:                   [3] Download          [4] Update            
echo:                   [5] Printers          [6] Troubleshoot            
echo:                   [7] Database          [0] Exit                                 
echo:             __________________________________________________      
echo: 
set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "0" exit /b
if "%Choice%" == "1" goto SQL_SERVER
if "%Choice%" == "2" goto Activity
if "%Choice%" == "3" goto Download
if "%Choice%" == "4" goto Update
if "%Choice%" == "5" goto Printers
if "%Choice%" == "6" goto Troubleshoot
if "%Choice%" == "7" goto Database
goto MainMenu

::::::::::::::::::::::::::::::::: For SQL SERVER :::::::::::::::::::::::::::::::::::::::::::
:SQL_SERVER
color 07
cls
echo: 
echo: 
echo:                                IRAQ SOFT
echo: 
echo:                                SQL SERVER
echo: 
echo:                   [1] SPEEDO       [2] SPEEDO REST                    
echo:                   [0] Go Back                      
echo:             __________________________________________________      
echo: 

set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "0" goto MainMenu
if "%Choice%" == "1" goto SQL_SPEEDO
if "%Choice%" == "2" goto SQL_SPEEDO_REST
goto SQL_SERVER


:SQL_SPEEDO_REST
color 0A
cls
echo: 
echo: 
echo:                                SQL SERVER
echo: 
echo:                                SPEEDO_REST
echo: 
echo:                   [1] Users        [0] Go Back                     
echo:             __________________________________________________      
echo: 
set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "0" goto SQL_SERVER
if "%Choice%" == "1" goto SPEEDO_REST_USERS
goto SQL_SPEEDO_REST

:SPEEDO_REST_USERS
setlocal enabledelayedexpansion
cls
echo: 
echo: 
echo:                                SPEEDO_REST
echo: 
echo:                                  Users
echo: 
echo:                   [1] New Admin        [2] Reset Admin Password                    
echo:                   [3] Delete Users     [0] Go Back                    
echo:             __________________________________________________      
echo: 

sqlcmd -S %SQL_Connection_SPEEDDO_REST% -Q "SELECT USER_CODE as ID, USER_NAME as Name, CASE WHEN IS_ENC = 1 THEN 'True' ELSE 'False' END as Enc FROM T_USERS" -s "|" -W 
set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    set /p Pass="Enter Password: "
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=INSERT into T_USERS (USER_CODE, USER_NAME, USER_PWD, LEVEL_CODE, ACTIVE, LOG_IN, IS_ENC, APP_PWD) values (!RandomNumber!, 'IRAQ SOFT', '!Pass!', 1, 1, 0, 0, '$2a$11$B08VqpwcVTXiYHYhMj8qpeeJ/UM9S/LZCmaH7RSS6TxrESG4J8Sei')"
    if !Confirm! == 1 goto SQL_Query
) else if "%Choice%" == "2" (
    set /p ID="Enter ID: "
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=UPDATE T_USERS SET USER_PWD ='fpd2Te7d3NwzGck5qAgK8g==' ,IS_ENC =1 where USER_CODE ='!ID!'"
    if !Confirm! == 1 goto SQL_Query
) else if "%Choice%" == "3" (
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=Delete from T_USERS; INSERT into T_USERS (USER_CODE, USER_NAME, USER_PWD, LEVEL_CODE, ACTIVE, LOG_IN, IS_ENC, APP_PWD) values (1, 'Admin', 22, 1, 1, 0, 1, '$2a$11$B08VqpwcVTXiYHYhMj8qpeeJ/UM9S/LZCmaH7RSS6TxrESG4J8Sei')"
    if !Confirm! == 1 goto SQL_Query
) else (
    goto SQL_SPEEDO_REST
)

goto SPEEDO_REST_USERS


:SQL_SPEEDO
setlocal enabledelayedexpansion
color 0C
cls
echo: 
echo: 
echo:                               IRAQ SOFT
echo: 
echo:                               SQL SERVER
echo: 
echo:                   [1] Users            [2] Active Telegram
echo:                   [3] Items            [0] Go Back                               
echo:             __________________________________________________      
echo: 

set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    goto SQL_SPEEDO_USERS
) else if "%Choice%" == "2" (
    set /p ID="Enter Group ID: "
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=UPDATE T_CONFIGRATION SET TELEGRAM ='False;True;True;True;True;True;True;False;True;True;True;True;True;True;True;True;',TELE_MAIN='Z8YEv4CT7AjhcVKk9Vnp4A==',TL_ID = '!ID!'"
    if !Confirm! == 1 goto SQL_SPEEDO_Query
) else if "%Choice%" == "3" (
    goto SQL_SPEEDO_ITEMS
) else (
    goto SQL_SERVER
)
goto SQL_SPEEDO

:SQL_SPEEDO_USERS
setlocal enabledelayedexpansion
cls
echo: 
echo: 
echo:                                 SPEEDO
echo: 
echo:                                  Users
echo: 
echo:                   [1] New Admin        [2] Reset Admin Password                    
echo:                   [3] Delete Users     [0] Go Back       
echo:             __________________________________________________      
echo: 

sqlcmd -S %SQL_Connection_SPEEDDO% -Q "SELECT USER_CODE as ID, USER_NAME as Name, CASE WHEN IS_ENC = 1 THEN 'True' ELSE 'False' END as Enc FROM T_USERS" -s "|" -W 
set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    set /p Pass="Enter Password: "
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=insert into T_USERS (USER_CODE,USER_NAME,USER_PWD,LEVEL_CODE,ACTIVE,LOG_IN,BOX_CODE,IS_ENC,SECURETY_CODE,MANDOOB_CODE,STORE_CODE,TYPE_PRICE_CODE,APP_PWD,LEVEL_APP,DRIVER_CODE,TYPE_CH_OFFER) values (!RandomNumber!,'IRAQ SOFT','!Pass!',1,1,0,5000,1,3,-10,-10,-10,NULL,1,0,'')"
    if !Confirm! == 1 goto SQL_SPEEDO_Query
) else if "%Choice%" == "2" (
    set /p ID="Enter ID: "
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=UPDATE T_USERS SET USER_PWD ='fpd2Te7d3NwzGck5qAgK8g==' ,IS_ENC =1 where USER_CODE ='!ID!'"
    if !Confirm! == 1 goto SQL_SPEEDO_Query
) else if "%Choice%" == "3" (
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=Delete from T_USERS; insert into T_USERS (USER_CODE,USER_NAME,USER_PWD,LEVEL_CODE,ACTIVE,LOG_IN,BOX_CODE,IS_ENC,SECURETY_CODE,MANDOOB_CODE,STORE_CODE,TYPE_PRICE_CODE,APP_PWD,LEVEL_APP,DRIVER_CODE,TYPE_CH_OFFER) values (1,'IRAQ SOFT',22,1,1,0,5000,1,3,-10,-10,-10,NULL,1,0,'')"
    if !Confirm! == 1 goto SQL_SPEEDO_Query
) else (
    goto SQL_SPEEDO
)
goto SQL_SPEEDO_USERS

:SQL_SPEEDO_ITEMS
setlocal enabledelayedexpansion
color 0C
cls
echo: 
echo: 
echo:                              IRAQ SOFT
echo: 
echo:                                Items
echo: 
echo:           [1] Enable Deleted Items         [2] Items Zero QY
echo:           [3] Delete Data But Items        [0] Go Back     
echo:             __________________________________________________      
echo: 

set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=UPDATE T_ITEMS set ACTIVE = 1"
    if !Confirm! == 1 goto SQL_SPEEDO_Query
) else if "%Choice%" == "2" (
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "Query=UPDATE T_STORE_BOX set ST_IN=0, ST_OUT=0 where BILL_NUMBER=0 UPDATE T_BUY_DETAILS SET QTY=0,TOTAL=0,TOTAL_COST=0,QTY_IN=0,QTY_OUT=0,TOTAL_OUT=0 WHERE BILL_NUMBER=0"
    if !Confirm! == 1 goto SQL_SPEEDO_Query
) else if "%Choice%" == "3" (
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "querylink=!Script_To_Factory!"
    if !Confirm! == 1 goto SQL_SPEEDO_Query_Link
) else (
    goto SQL_SERVER
)
goto SQL_SPEEDO_ITEMS
::::::::::::::::::::::::::::::::: For SQL SERVER :::::::::::::::::::::::::::::::::::::::::::




::::::::::::::::::::::::::::::::: For ACTIVITY :::::::::::::::::::::::::::::::::::::::::::
:Activity
color 07
cls
echo: 
echo: 
echo:                                IRAQ SOFT
echo: 
echo:                                 Activity
echo: 
echo:                   [1] Remotly             [2] SIP            
echo:                   [3] Change PC IP        [4] Captin App            
echo:                   [5] Invoice App         [0] Go Back             
echo:             __________________________________________________      
echo: 
set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "0" goto MainMenu
if "%Choice%" == "1" goto Remotly
if "%Choice%" == "2" goto SIP
if "%Choice%" == "3" goto Connect_Computer
if "%Choice%" == "4" goto Captin_App
if "%Choice%" == "5" goto Access_App
goto Activity

:Remotly
set /p username="Enter username: "
set password=1
net user %username% %password% /add >nul 2>&1
wmic useraccount where "Name='%username%'" set FullName="%username%" >nul 2>&1
wmic useraccount where "Name='%username%'" set PasswordChangeable=false >nul 2>&1
wmic useraccount where "Name='%username%'" set PasswordExpires=false >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f >nul 2>&1
netsh advfirewall firewall set rule group="Remote Desktop" new enable=Yes >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f >nul 2>&1
net localgroup "Remote Desktop Users" %username% /add >nul 2>&1

if %errorlevel% neq 0 (
    echo The Current User Is Alredy 
    pause
    goto Remotly
)
powershell -Command "Set-NetFirewallProfile -Profile Public -DisabledInterfaceAliases Wi-Fi"
powershell -Command "Set-NetFirewallProfile -Profile Public -DisabledInterfaceAliases Ethernet"
powershell -Command "Add-MpPreference -ExclusionPath !Exclution_Remotly_Loc!"
echo ADD Complete 
pause
goto Remotly


:SIP
sc stop WinDefend > nul 2>&1
sc config WinDefend start= disabled > nul 2>&1
sc stop MpsSvc > nul 2>&1
sc config MpsSvc start= disabled > nul 2>&1
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true" > nul 2>&1
powershell -Command "Set-NetFirewallProfile -Profile Public -DisabledInterfaceAliases Wi-Fi" > nul 2>&1
powershell -Command "Set-NetFirewallProfile -Profile Public -DisabledInterfaceAliases Ethernet" > nul 2>&1
powershell -Command "Add-MpPreference -ExclusionPath !Exclution_Sip_Loc!" > nul 2>&1
echo Complete 
pause

goto Activity



:Connect_Computer
setlocal enabledelayedexpansion
color 07
cls
echo: 
echo: 
echo:                                IRAQ SOFT
echo: 
echo:                              Change PC IP
echo: 
echo:                   [1] Wifi          [2] Ethernet            
echo:                   [0] Go Back                      
echo:             __________________________________________________      
echo: 
set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    set /p STATIC_IP="Enter The IP :"
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "INTERFACE_NAME=Wi-Fi" 
    if !Confirm! == 1 goto Connecting_Computer
) else if "%Choice%" == "2" (
    set /p STATIC_IP="Enter The IP :"
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "INTERFACE_NAME=Ethernet"
    if !Confirm! == 1 goto Connecting_Computer
) else (
    goto Activity
)

goto Connect_Computer


:Connecting_Computer
powershell -Command "Set-NetFirewallProfile -Profile Public -DisabledInterfaceAliases !INTERFACE_NAME!"
netsh interface ipv4 delete address name="!INTERFACE_NAME!" addr=!STATIC_IP!
netsh interface ipv4 set address name="!INTERFACE_NAME!" static !STATIC_IP! %SUBNET_MASK%
if %errorlevel% neq 0 (
    echo The Current User Is Alredy 
    pause
    goto Connect_Computer
)
echo Complete 
pause
goto Connect_Computer



:Captin_App
setlocal enabledelayedexpansion
color 07
cls
echo: 
echo: 
echo:                              IRAQ SOFT
echo: 
echo:                             Change PC IP
echo: 
echo:                   [1] Wifi          [2] Ethernet            
echo:                   [0] Go Back                      
echo:             __________________________________________________      
echo: 
set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    set /p STATIC_IP="Enter The IP :"
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "INTERFACE_NAME=Wi-Fi"
    if !Confirm! == 1 goto Connect_Captin
) else if "%Choice%" == "2" (
    set /p STATIC_IP="Enter The IP :"
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "INTERFACE_NAME=Ethernet"
    if !Confirm! == 1 goto Connect_Captin
) else (
    goto Activity
)

goto Captin_App

:Connect_Captin
powershell -Command "Invoke-WebRequest -Uri '%REST_App_Url%' -OutFile '%Donwload_Backup%\REST_App.sql' -UseBasicParsing"
sqlcmd -S %SQL_Connection_SPEEDDO%  -i  "%Donwload_Backup%\REST_App.sql" >nul 2>&1
powershell -Command "Set-NetFirewallProfile -Profile Public -DisabledInterfaceAliases !INTERFACE_NAME!"
netsh interface ipv4 delete address name="!INTERFACE_NAME!" addr=!STATIC_IP!
netsh interface ipv4 set address name="!INTERFACE_NAME!" static !STATIC_IP! %SUBNET_MASK%
if %errorlevel% neq 0 (
    echo The Current User Is Alredy 
    pause
    goto Connect_Computer
)
echo Complete 
pause
goto Captin_App



:Access_App
setlocal enabledelayedexpansion
color 07
cls
echo: 
echo: 
echo:                              IRAQ SOFT
echo: 
echo:                             Change PC IP
echo: 
echo:                   [1] Wifi          [2] Ethernet            
echo:                   [0] Go Back                      
echo:             __________________________________________________      
echo: 
set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    set /p STATIC_IP="Enter The IP :"
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "INTERFACE_NAME=Wi-Fi"
    if !Confirm! == 1 goto Connect_Access
) else if "%Choice%" == "2" (
    set /p STATIC_IP="Enter The IP :"
    choice /C:YN /N /M "Are you sure you want continue? (Y/N): "
    set "Confirm=!errorlevel!"
    set "INTERFACE_NAME=Ethernet"
    if !Confirm! == 1 goto Connect_Access
) else (
    goto Activity
)

goto Access_App

:Connect_Access

powershell -Command "Invoke-WebRequest -Uri '%SPEEDO_App_Url%' -OutFile '%Donwload_Backup%\SPEEDO_App.sql' -UseBasicParsing"
sqlcmd -S %SQL_Connection_SPEEDDO%  -i  "%Donwload_Backup%\SPEEDO_App.sql" >nul 2>&1
powershell -Command "Set-NetFirewallProfile -Profile Public -DisabledInterfaceAliases !INTERFACE_NAME!"
netsh interface ipv4 delete address name="!INTERFACE_NAME!" addr=!STATIC_IP!
netsh interface ipv4 set address name="!INTERFACE_NAME!" static !STATIC_IP! %SUBNET_MASK%
if %errorlevel% neq 0 (
    echo The Current User Is Alredy 
    pause
    goto Connect_Computer
)
echo Complete 
pause
goto Access_App

::::::::::::::::::::::::::::::::: For ACTIVITY :::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: For DOWNLOAD :::::::::::::::::::::::::::::::::::::::::::
:Download
setlocal
cls
echo: 
echo: 
echo:                                IRAQ SOFT
echo: 
echo:                                 Download
echo: 
echo:                   [1] SPEEDO FULL        [2] SPEEDO UPDATE           
echo:                   [3] SPEEDO REST FULL   [4] SPEEDO REST UPDATE  
echo:                   [5] AMAN               [6] SQL 
echo:                   [7] SUPER POINT        [8] POS 
echo:                   [9] SIP                [10] Remotly 
echo:                   [11] Point shipping    [0] Go Back  
echo:             __________________________________________________   

set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "0" goto MainMenu
if "%Choice%" == "1" (
    set url=%Speedo_Full_Url%
    set output=%desktopPath%\%Speedo_Full_File%
    goto Start_Download
)
if "%Choice%" == "2" (
    set url=%Speedo_Update_Url%
    set output=%desktopPath%\%Speedo_Update_File%
    goto Start_Download
)
if "%Choice%" == "3" (
    set url=%Speedo_Rest_Full_Url%
    set output=%desktopPath%\%Speedo_Rest_Full_File%
    goto Start_Download
)
if "%Choice%" == "4" (
    set url=%Speedo_Rest_Update_Url%
    set output=%desktopPath%\%Speedo_Rest_Update_File%
    goto Start_Download
)
if "%Choice%" == "5" (
    set url=%Aman_Url%
    set output=%desktopPath%\%Aman_File%
    goto Start_Download
)
if "%Choice%" == "6" (
    set url=%SQL_Url%
    set output=%desktopPath%\%SQL_File%
    goto Start_Download
)
if "%Choice%" == "7" (
    set url=%Super_Point_Url%
    set output=%desktopPath%\%Super_Point_File%
    goto Start_Download
)
if "%Choice%" == "8" (
    set url=%POS_Url%
    set output=%desktopPath%\%POS_File%
    goto Start_Download
)
if "%Choice%" == "9" (
    set url=%SIP_Url%
    set output=%desktopPath%\%SIP_File%
    goto Start_Download
)
if "%Choice%" == "10" (
    set url=%Remotly_Url%
    set output=%desktopPath%\%Remotly_File%
    goto Start_Download
)
if "%Choice%" == "11" (
    set url=%Point_Charge_Url%
    set output=%desktopPath%\%Point_Charge_File%
    goto Start_Download
)

goto Download

::::::::::::::::::::::::::::::::: For DOWNLOAD :::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: For Printers  :::::::::::::::::::::::::::::::::::::::::::
:Printers
setlocal
cls
echo: 
echo: 
echo:                                IRAQ SOFT
echo: 
echo:                                 Printers
echo: 
echo:                   [1] Canon 6030        [2] Thermal printer         
echo:                   [3] BARCODE printer   [4] IPOS JJ printer  
echo:                   [5] POS 80 Series     [6] AG POS Printer 
echo:                   [7] ZJ Printer        [8] XPrinter 
echo:                   [9] HPRT Printer      [10] Printer Tool 
echo:                   [11] Xprinter Barcode [12] Xprinter Pos  
echo:                   [13] POSBANK A7       [0] Go Back  
echo:             __________________________________________________   

set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "0" goto MainMenu
if "%Choice%" == "1" (
    set url=%Canon_6030_Url%
    set output=%desktopPath%\%Canon_6030_File%
    goto Start_Download
)
if "%Choice%" == "2" (
    set url=%POS_Printer_Url%
    set output=%desktopPath%\%POS_Printer_File%
    goto Start_Download
)
if "%Choice%" == "3" (
    set url=%BARCODE_Url%
    set output=%desktopPath%\%BARCODE_File%
    goto Start_Download
)
if "%Choice%" == "4" (
    set url=%IPOS_JJ_Url%
    set output=%desktopPath%\%IPOS_JJ_File%
    goto Start_Download
)
if "%Choice%" == "5" (
    set url=%POS_80_Series_Url%
    set output=%desktopPath%\%POS_80_Series_File%
    goto Start_Download
)
if "%Choice%" == "6" (
    set url=%AG_POS_Url%
    set output=%desktopPath%\%AG_POS_File%
    goto Start_Download
)
if "%Choice%" == "7" (
    set url=%ZJ_Url%
    set output=%desktopPath%\%ZJ_File%
    goto Start_Download
)
if "%Choice%" == "8" (
    set url=%xpriner_Url%
    set output=%desktopPath%\%xpriner_File%
    goto Start_Download
)
if "%Choice%" == "9" (
    set url=%HPRT_Url%
    set output=%desktopPath%\%HPRT_File%
    goto Start_Download
)
if "%Choice%" == "10" (
    set url=%Printer_Tool_Url%
    set output=%desktopPath%\%Printer_Tool_File%
    goto Start_Download
)
if "%Choice%" == "11" (
    set url=%Xprinter_Barcode_Url%
    set output=%desktopPath%\%Xprinter_Barcode_File%
    goto Start_Download
)
if "%Choice%" == "12" (
    set url=%Xprinter_Pos_Url%
    set output=%desktopPath%\%Xprinter_Pos_File%
    goto Start_Download
)
if "%Choice%" == "13" (
    set url=%POSBANK_A7_Url%
    set output=%desktopPath%\%POSBANK_A7_File%
    goto Start_Download
)

goto Printers

::::::::::::::::::::::::::::::::: For Printers  :::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::: For Update :::::::::::::::::::::::::::::::::::::::::::
:Update 

echo This Operation Not Used Right Now 
pause
goto MainMenu
goto Update

::::::::::::::::::::::::::::::::: For Update :::::::::::::::::::::::::::::::::::::::::::


::::::::::::::::::::::::::::::::: For Troubleshoot  :::::::::::::::::::::::::::::::::::::::::::
:Troubleshoot
setlocal
cls
echo: 
echo: 
echo:                                IRAQ SOFT
echo: 
echo:                               Troubleshoot
echo: 
echo:                   [1] Date/Time           [2] Delete Locale         
echo:                   [3] Enable Sql Service  [0] Go Back  
echo:             __________________________________________________   

set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    reg add "HKEY_CURRENT_USER\Control Panel\International" /v sShortDate /t REG_SZ /d yyyy/MM/dd /f>nul 2>&1
    taskkill /f /im explorer.exe & start explorer.exe>nul 2>&1
    echo Success
    pause
    goto Troubleshoot
)  else if "%Choice%" == "2" (
    rmdir /S /Q "%localePath%"
    echo Success
    pause
    goto Troubleshoot
) else if "%Choice%" == "3" (
    sc config "MSSQL$SALES_DEV" start= auto >nul 2>&1
    sc start "MSSQL$SALES_DEV" >nul 2>&1
    echo Success
    pause
    goto Troubleshoot
)   else (
    goto MainMenu
)

goto Troubleshoot
::::::::::::::::::::::::::::::::: For Troubleshoot  :::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::: For Database  :::::::::::::::::::::::::::::::::::::::::::

:Database
setlocal enabledelayedexpansion
cls
echo: 
echo: 
echo:                                IRAQ SOFT
echo: 
echo:                                 Database
echo: 
echo:                   [1] Pharmacy        [2] Market      
echo:                   [3] Empty Data      [0] Go Back  
echo:             __________________________________________________   

set /p Choice="Enter A Menu Choice : "
if "%Choice%" == "1" (
    set "Database_Url=!pharmacy_Database_Url!"
    goto Start_Restore_Database
) else if "%Choice%" == "2" (
    set "Database_Url=!Market_Database_Url!"
    goto Start_Restore_Database
) else if "%Choice%" == "3" (
    set "Database_Url=!Empty_Database_Url!"
    goto Start_Restore_Database
) else (
    goto MainMenu
)


goto Printers
::::::::::::::::::::::::::::::::: For Database  :::::::::::::::::::::::::::::::::::::::::::

:SQL_Query
sqlcmd -S %SQL_Connection_SPEEDDO_REST% -Q "BACKUP DATABASE RESTAURANT_DB DISK="%Backup_Loc%" with format" >nul 2>&1
sqlcmd -S %SQL_Connection_SPEEDDO_REST%  -Q "%Query%" >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo complete.
) else (
    echo There was an error with the SQL command.
)
PAUSE
goto SQL_SPEEDO_REST


:SQL_SPEEDO_Query
sqlcmd -S %SQL_Connection_SPEEDDO% -Q "BACKUP DATABASE SPEEDOO_DB DISK="%Backup_Loc%" with format" >nul 2>&1
sqlcmd -S %SQL_Connection_SPEEDDO%  -Q "%Query%" >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo complete.
) else (
    echo There was an error with the SQL command.
)
PAUSE
goto SQL_SPEEDO

:SQL_SPEEDO_Query_Link
sqlcmd -S %SQL_Connection_SPEEDDO% -Q "BACKUP DATABASE SPEEDOO_DB DISK="%Backup_Loc%" with format" >nul 2>&1
powershell -Command "Invoke-WebRequest -Uri '!querylink!' -OutFile '%Donwload_Backup%\Factory.sql' -UseBasicParsing"
sqlcmd -S %SQL_Connection_SPEEDDO% -Q "USE [master]; ALTER DATABASE SPEEDOO_DB SET SINGLE_USER WITH ROLLBACK IMMEDIATE; RESTORE DATABASE SPEEDOO_DB FROM DISK='%Download_Backup%\database_backup.bak' WITH REPLACE; ALTER DATABASE SPEEDOO_DB SET MULTI_USER;" >nul 2>&1
sqlcmd -S %SQL_Connection_SPEEDDO%  -i "%Donwload_Backup%\Factory.sql"
if %ERRORLEVEL% EQU 0 (
    echo complete.
) else (
    echo There was an error with the SQL command.
)
PAUSE
goto SQL_SPEEDO

:Start_Restore_Database

powershell -Command "Invoke-WebRequest -Uri '%Database_Url%' -OutFile '%Donwload_Backup%\database_backup.bak' -UseBasicParsing"
sqlcmd -S %SQL_Connection_SPEEDDO% -Q "BACKUP DATABASE SPEEDOO_DB DISK="%Backup_Loc%" WITH FORMAT" >nul 2>&1
sqlcmd -S %SQL_Connection_SPEEDDO% -Q "USE [master]; ALTER DATABASE SPEEDOO_DB SET SINGLE_USER WITH ROLLBACK IMMEDIATE; RESTORE DATABASE SPEEDOO_DB FROM DISK='%Download_Backup%\database_backup.bak' WITH REPLACE; ALTER DATABASE SPEEDOO_DB SET MULTI_USER;" >nul 2>&1

if %ERRORLEVEL% EQU 0 (
    echo Restore complete.
) else (
    echo There was an error with the SQL command.
)

PAUSE
goto Database


:Start_Download
curl -L --progress-bar --retry 5 --retry-delay 10 -C - -o %output% %url%
if %errorlevel% neq 0 (
    echo Download interrupted. Retrying...
    timeout /t 10
    goto Start_Download
)

echo Download Complete. Waiting To Opening The File...
start "" %output%
pause
goto Download
