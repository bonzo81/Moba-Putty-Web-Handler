# Moba-Putty-Web-Handler
Files required to open MobaXterm or PuTTY when using ssh:// and telnet:// URLs

#### For SSH connection you will be asked to enter username before connecting.

### MobaXTerm

> MobaXTerm is expected to be installed in the default location of C:\Program Files (x86)\Mobatek\MobaXterm\
> PuTTY is expected to be at C:\Program Files (x86)\PuTTY\

Go into folder for PuTTY or MobaXTerm.

1. Copy 'ssh_handler' & 'telnet_handler' to C:\Program Files (x86)\Mobatek\MobaXterm\ OR C:\Program Files (x86)\PuTTY\
2. Run each reg file
3. Restart PC
4. Login back in and go to settings (Win+i)
5. Search 'proto'
6. Select 'choose a default app for each protocol'
7. Find SSH & Telent in list and make sure 'Custom SSH/Telnet Handler' is selected.


That's it.

Test you can open ssh:\\x.x.x.x and telnet:\\x.x.x.x links from Librenms or any other web site.
