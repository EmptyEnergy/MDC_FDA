# MDC_FDA
Full Disk Access with MDC

FileTroller by. Nathan

DirtyJit by. Haxi0

1. Download the git
2. Open FileTroller in Xcode
3. Install the app from Xcode to your device
4. Find out what the UDID is from FileTroller of your device
5. in patchddi change the numbers to your ios version + change the UDID of the app in patchddi file
6. execute patchdii after that execute signddi

Example:
./patchddi.sh

7. Use DirtyJIT to replace iPhone.pem
8. Mount the DDI

Example:
ideviceimagemounter (DDI.dmg) (DDI.dmg.signature)

Note : if you get an error while the process close Xcode and reboot your iPhone
After that replace iphone.pem again with DirtyJIT... DirtyJIT is an ios app

9. Open FileTroller on you device and press on the Button
10. Now you have FDA
11. connect to the daemon over iSH (nc 0.0.0.0 1337) or over your computer (nc (iP Adress here) 1337)
12. connected you need to run "tccd" to escape the Sandbox

run commands like "cd" and "ls" to use it
