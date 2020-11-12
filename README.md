# Exchange-Hybrid-Mail-Fixer-Scripts

The purpose of these scripts is to easily create a remote mailbox for an O365 user in a hybrid environment if that user was not created in the way that is recommended my Microsoft (creating the user in on-premises Exchange as an Office 365 mailbox user first.) The motivation for doing this was because an organization that I work with did user creation in a different way from what was recommended. This led to problems when they began provisioning users in O365, namely that users who had on-premises Exchange mailboxes could not email the newly created O365 users. After much troubleshooting we found that a remote mailbox entry needed to be created with the O365 mailbox's GUID listed on the remote mailbox.

The scripts are very simple and as such they have no real error handling built in, so run at your own risk. You will need to alter the email domains in the script to match your comapny or organization's domains and will need to potentially alter some file paths to make it work for you. These scripts should run on an on-premises Exchange server (I ran it on a hybrid Exchange connector) and you should only need to call the first script-- the other will start automagically.

If you have any questions or any suggestions on how to improve these please do not hesitate to reach out.
