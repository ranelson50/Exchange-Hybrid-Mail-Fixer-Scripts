echo "


Hey, I am a robot and I am going to help you fix this person's mailbox.


"
echo "


Feed me some credentials


"

$Session = New-PSSession -ConfigurationName Microsoft.Exchange `
-ConnectionUri https://outlook.office365.com/powershell-liveid/ `
-Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session -DisableNameChecking

$MailUser = Read-Host -Prompt "


What is the mailbox user's name? (first name.last name typically)


"

Get-Mailbox $MailUser | Format-List ExchangeGuid

echo "Copy that string, you will need it in a minute"

Remove-PSSession $Session

powershell.exe -noexit -command ". 'D:\Program Files\Microsoft\Exchange Server\V15\bin\RemoteExchange.ps1'; Connect-ExchangeServer -auto -ClientApplication:ManagementShell; . 'C:\mail_fixer_2.ps1'"