# MDC_FDA
Full Disk Access with MDC

1. Download the git
2. Open FileTroller in Xcode
3. Install the app from Xcode to your device
4. Find out what the UDID is from FileTroller of your device
5. in patchddi change the numbers to your ios version + change the UDID of the app in patchddi file
6. execute patchdii after that execute signddi

Example:
./patchddi.sh

7. Open FileTroller on you device and press on the Button
8. Now you have FDA
9. connect to the daemon over iSH (nc 0.0.0.0 1337) or over your computer (nc (iP Adress here) 1337)
