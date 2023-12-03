#!/bin/bash
##This script makes a backup of a single dir. It needs a path to a dir as an argument. If not given, it might do something silly.
##The backup is being made in to the default folder specified in the <mystery-path>/projectGlobalVariables file
##If provided with a second argument, that will be used as the destination path

source <mystery-path>/projectGlobalVariables;

##Re-defining the behaviour
backupName="planning_$timestamp";
backupSource="$planning";
backupDestination="$fullBackupDestinationPath";
cp -r $backupSource $backupDestination/$backupName

##You may override the defauld destination with an argument or applying info here
#defaultBackupDestination="$projectRoot/backups/singleDirs";


