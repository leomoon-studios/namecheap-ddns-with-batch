@ECHO off
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::: INFO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::: ABOUT:
::::::: This script will update NameCheap dynamic dns using wget binary
::: AUTOHR:
::::::: Amin Babaeipanah
::: VERSION:
::::::: 1.00
::: CHANGELOG:
::::::: Initial release
::: USAGE:
::::::: Get a domain from namecheap.com
::::::: Enable dynamic dns in YourDomain.TLD > Advanced DNS
::::::: Delete the default two host records
::::::: Add A + dynamic dns record
:::::::     Host field
:::::::         Type a custom subdomain if you want to use a subdomain as dynamic dns
:::::::         Type "@" if you want to use the domain as dynamic dns
:::::::     Value field
:::::::         Type 1.1.1.1
::::::: Open ddns.bat
::::::: Change the ddnsUrl variable with your newly purchased domain in VARIABLES TO CHANGE section
::::::: Change the host variable with the subdomain you chose (or "@") in VARIABLES TO CHANGE section
::::::: Copy the dynamic dns password and change the ddnsPass variable in VARIABLES TO CHANGE section
::::::: Save and run it
::::::: Create a shortcut in startup folder (Optional)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::: VARIABLES TO CHANGE :::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
SET url=yourdomain.tld
SET host=subdomain
SET pass=dynamicdnsPassword

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::: START :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:update
FOR /F "tokens=* USEBACKQ" %%F IN (`wget -O - -q https://dynamicdns.park-your-domain.com/getip`) DO (
SET ip=%%F
)
wget -O - -q "https://dynamicdns.park-your-domain.com/update?host=%host%&domain=%url%&password=%pass%&ip=%ip%"
ECHO.
ECHO Last DDNS update: %date:~10,4%-%date:~4,2%-%date:~7,2% %time:~0,8%
timeout /t 3600
ECHO.
GOTO update