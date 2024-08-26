Microsoft provided the steps to detect if Print Spooler service is enabled and how to disable them:

First, you need to determine if the Print Spooler service is running.

Run the following in Windows PowerShell (Run as administrator):

Get-Service -Name Spooler

If Print Spooler is running or if the service is not set to disabled, then select one of the options below to either disable the Print Spooler service or to Disable inbound remote printing through Group Policy.

Option 1)  Disable the Print Spooler service:

If disabling the Print Spooler service is appropriate for your environment, use the following PowerShell commands:

Stop-Service -Name Spooler -Force

Set-Service -Name Spooler -StartupType Disabled

NOTE: By disabling the Print Spooler service, you remove the ability to print locally and remotely.

Option 2)  Disable inbound remote printing through Group Policy:

The settings via Group Policy can be configured as follows:

Computer Configuration / Administrative Templates / Printers

Disable the “Allow Print Spooler to accept client connections” policy to block remote attacks.

This policy will block the remote attack vector by preventing inbound remote printing operations. The system will no longer operate as a print server, but local printing to a directly attached device will still work.

Note: Remember that for the group policy to take effect across the domain, or even the local machine, you need to issue a gpupdate /force command.

For more information, see: Use Group Policy settings to control printers.

The security update for Windows Server 2012, Windows Server 2016, and Windows 10, Version 1607 have been released by Microsoft on July 7, 2021. 

Additional steps for mitigation besides installing the updates recommended by Microsoft:

You must confirm that the following registry settings are set to 0 (zero) or are not defined (Note: The mentioned below registry keys do not exist by default, and therefore are already at the secure setting.), also check that your Group Policy settings are correct (see FAQ):

HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint

NoWarningNoElevationOnInstall = 0 (DWORD) or not defined (default setting)

UpdatePromptSettings = 0 (DWORD) or not defined (default setting)

Note: Having NoWarningNoElevationOnInstall set to 1 makes your system vulnerable by design.
