@echo off
echo This batch file is running as administrator.
ssh -t team01@192.168.10.105 "cd Other/backup/database ; bash --login"