#THIS COMMAND ALLOWS THE SCRIPT TO RUN
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine;
#CHANGE USER FOR WHICHEVER ACCOUNT NEEDS TO BE COPIED
$User = "\Tdean"
$Documents = "\Documents*"
$Downloads = "\Downloads*"
$Pictures = "\Pictures*"
$Desktop = "\Desktop*"
$Path = "C:\Users*"
$PartDoc= join-path -path $User -childpath $Documents
$PartDow= join-path -path $User -childpath $Downloads
$PartPic= join-path -path $User -childpath $Pictures
$PartDes= join-path -path $User -childpath $Desktop
$FullDoc= join-path -path $Path -childpath $PartDoc
$FullDow= join-path -path $Path -childpath $PartDow
$FullPic= join-path -path $Path -childpath $PartPic
$FullDes= join-path -path $Path -childpath $PartDes
Copy-Item -Path $FullDoc -Destination D: -recurse -Force;
Copy-Item -Path $FullDow -Destination D: -recurse -Force;
Copy-Item -Path $FullPic -Destination D: -recurse -Force;
Copy-Item -Path $FullDes -Destination D: -recurse -Force;
#THIS SETS THE SCRIPT PERMISSIONS BACK TO RESTRICTED
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope LocalMachine
