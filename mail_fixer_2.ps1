$MailUser = Read-Host -Prompt "


My robot memory is bad. What is that user's name again? (Again, first name.last name)


"

$GUID = Read-Host -Prompt '


What was that GUID again?


'

$RemoteAddress = "$MailUser@contoso.onmicrosoft.com"

$PrimarySMTP = "$MailUser@contoso.com"

Enable-RemoteMailbox "$MailUser" -RemoteRoutingAddress "$RemoteAddress" -PrimarySmtpAddress "$PrimarySMTP"

Set-RemoteMailbox "$MailUser" -ExchangeGuid "$GUID"

Get-AdUser "$MailUser" | Set-AdObject -Replace @{msExchRecipientDisplayType=-1073741818}

echo "


If you have made it this far without error then you should be okay.


"