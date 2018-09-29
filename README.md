# Introduction
Dynamic DNS for NameCheap using Batch

## Donations
Future development of this project depends on community donations. All proceeds will go towards the development. You can donate using "[THIS LINK](https://www.paypal.me/leomoon)" and make sure to include which project you want to support.

## Donors

*   NA

## Programmers

*   Amin Babaeipanah

## Changelog

*   1.00:
    *   First public release

## How to install

1.  Get a domain from namecheap.com
2.  Enable dynamic dns in YourDomain.TLD > Advanced DNS
3.  Delete the default two host records
4.  Add A + dynamic dns record
    *   Host field
        *   Type a custom subdomain if you want to use a subdomain as dynamic dns
        *   Type "@" if you want to use the domain as dynamic dns
    *   Value field
        *   Type 1.1.1.1
5.  Open ddns.bat
6.  Change the ddnsUrl variable with your newly purchased domain in VARIABLES TO CHANGE section
6.  Change the host variable with the subdomain you chose (or "@") in VARIABLES TO CHANGE section
7.  Copy the dynamic dns password and change the ddnsPass variable in VARIABLES TO CHANGE section
8.  Save and run it
9.  Create a shortcut in startup folder (Optional)

## Future ideas

*   NA

## Compatibility

Windows 7 and later