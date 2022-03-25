# Moba-Putty-Web-Handler
Files required to open MobaXterm or PuTTY when using ssh:// and telnet:// URLs on Windows.

This is based on https://tcpip.wtf/en/ssh-protocol-link-handler-win10-and-mobaxterm.htm

#### For SSH connections the ssh_handler will first ask for a username before connecting.

>  MobaXTerm is expected to be installed in the default location of C:\Program Files (x86)\Mobatek\MobaXterm\

>  PuTTY is expected at C:\Program Files (x86)\PuTTY\

### Instructions

Go into repo folder for PuTTY or MobaXTerm.

1. Download the PuTTY or MobaXTerm folder.
2. Copy 'ssh_handler' & 'telnet_handler' to C:\Program Files (x86)\Mobatek\MobaXterm\ OR C:\Program Files (x86)\PuTTY\
3. Run each reg file
4. Restart PC
5. Login back in and go to settings (Win+i)
6. Search 'proto'
7. Select 'choose a default app for each protocol'
8. Find SSH & Telnet in list and make sure 'Custom SSH/Telnet Handler' is selected.


That's it.

Test you can open ssh://x.x.x.x/ and telnet://x.x.x.x/ links.
