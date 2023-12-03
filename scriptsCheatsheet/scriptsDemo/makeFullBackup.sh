#!/bin/bash
##The point is to make a full backup of the project somewhere outside it's own scope

##First the sources for external variables because execution order.
source <mystery-path>/projectGlobalVariables;

##Local variables
myLog="$logs/backupLogs/full";

##Outside project scope variable setting
externalBackupName="planning_$timestamp";
externalBackupSource="$planning";
externalBackupDestination="$fullBackupDestinationPath";

##We could also add some math that tells how long it took to run the whole operation. I'll leave it to another day
echo -e "\n=================\n$timestamp\nPreparing to make a full backup of the project..\n" >> $myLog/successfullBackup.txt;
myTime="$timestamp";
cp -r -v $projectRoot $fullBackupDestinationPath/projectR_FullBackup_$timestamp > $myLog/backuppedFiles.txt;
numberOfFiles="$(cat $myLog/backuppedFiles.txt | wc -l)";
echo -e "Total: $numberOfFiles files successfully copied." >> $myLog/backuppedFiles.txt;
echo -e "...done!\nStart time: $myTime\nFinish time:\n$(date)\nThis log was created by: $PWD${0:1}\n===================\n" >> $myLog/backuppedFiles.txt;
cat $myLog/backuppedFiles.txt >> $myLog/successfullBackup.txt;

##Doing outside project backing-up
echo -e "\n=================\n$timestamp\nPreparing to make a full backup of the defined dirs outside the project..\n" >> $myLog/externalSuccessfullBackup.txt;
myTime="$timestamp";
cp -r -v $externalBackupSource $externalBackupDestination/$externalBackupName > $myLog/externalBackuppedFiles.txt;
numberOfFiles="$(cat $myLog/externalBackuppedFiles.txt | wc -l)";
echo -e "Total: $numberOfFiles files successfully copied." >> $myLog/externalBackuppedFiles.txt;
echo -e "...done!\nStart time: $myTime\nFinish time:\n$(date)\nThis log was created by: $PWD${0:1}\n===================\n" >> $myLog/externalBackuppedFiles.txt;
cat $myLog/externalBackuppedFiles.txt >> $myLog/externalSuccessfullBackup.txt;



