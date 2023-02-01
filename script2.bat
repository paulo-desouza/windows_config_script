cd D:\Installers

start ChromeSetup.exe
start OfficeSetup.exe
start AdobeSetup.exe

wmic UserAccount set PasswordExpires=False

tzutil /s "Eastern Standard Time"

wmic computersystem where name="%computername%" call joindomainorworkgroup name="CELEBREE"

hostname>temp.txt
set /p oldname=<temp.txt

WMIC computersystem where caption='%oldname%' rename NewComputerName

