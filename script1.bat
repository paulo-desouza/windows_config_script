net user Kids kids /add
net user Teacher Children! /add
net user CelAdmin $chooL4Kid$ /add

net localgroup administrators CelAdmin /add

net user Sysman /delete

wmic UserAccount set PasswordExpires=False

tzutil /s "Eastern Standard Time"

wmic computersystem where name="%computername%" call joindomainorworkgroup name="CELEBREE"

hostname>temp.txt
set /p oldname=<temp.txt

WMIC computersystem where caption='%oldname%' rename NewComputerName

shutdown /r /t 6