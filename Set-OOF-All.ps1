$OFF_Message = "I am away from the office now until Wednesday 2 January Wishing you all the best for the festive period,Thank You";


$mailboxes = get-mailbox | where-object {($_.IsShared -eq $False -and $_.Name -ne "GA-Journal-Docs")}

forEach ($mailbox in $mailboxes) 
{
    Set-MailboxAutoReplyConfiguration -Identity $mailbox.WindowsEmailAddress -AutoReplyState Enabled -ExternalMessage $OFF_Message -EndTime "02/01/2019 7:30AM"
}