#!/bin/bash
##This script is meant to be exected 1 folder deeper from projectRoot to work properly
##Things that are tagged with +++<n> are things that need to be enabled or disabled as groups. Comment or uncomment all instances tagged with the same +++<letter>-combo.
##I can't think of any usecase for things that give output as ./../something but it's there if one want's to use it.

source <mystery-path>/projectGlobalVariables;

##You can comment out your options you don't want to use
sweep="cleanupDirListAutoCreated.sh";

##+++A
#aaa="dirListEndOfLineDelimitedRelativePath.txt";
##+++B
bbb="dirListEndOfLineDelimitedAbsolutePath.txt";
##+++C
#ccc="dirListSpaceDelimitedRelativePath.txt";
##+++D
#ddd="dirListSpaceDelimitedAbsolutePath.txt";
##+++E
#eee="dirListEndOfLineDelimitedRelativePathOneDeep.txt";
##+++F
#fff="dirListEndOfLineDelimitedAbsolutePathOneDeep.txt";

##First to make a list of dirs to create. Maybe this is the easy way. How to prune the start away?
##I'm only going to enable logging of files generated or deleted for +++B
##+++A
#find ./.. -type d > $aaa;

##+++B
if [[ -f "./$bbb" ]]; then
	echo -e "$timestamp\n$projectRoot/sourceCreate/$bbb\nUpdated\n=======\n" >> $logs/createLogs/dirList.txt;
else
	echo -e "$timestamp\n$projectRoot/sourceCreate/$bbb\nCreated\n=======\n" >> $logs/createLogs/dirList.txt;
fi;
find $projectRoot -type d > $bbb;

##One way is to first put the result in a variable and then modify it and after that pipe the output to a file. Now the list entrys are separated by spaces instead of linebreaks
##If cycling through the file with a command, the whitespaces can be ok, but it's not pretty
#listOfDirs=$(find ./.. -type d);
##+++C
#echo ${listOfDirs//'./..'/} > $ccc;

##Since the output of find in this case doesn't contain ./.. at all, the next echo looks a bit silly
#listOfDirs=$(find $projectRoot -type d);
##+++D
#echo ${listOfDirs//'./..'/} > $ddd;

##Trying to avoid getting subfolders and .. (folder 1 up from here) as the result. When finding with relative path, this seems pointless
##+++E
#find ./.. -maxdepth 1 -mindepth 1 -type d > $eee;

##+++F
#find $projectRoot -maxdepth 1 -mindepth 1 -type d > $fff;

##Cleaning up script creation if there isn't one to be found
##Because there might be some additions to this scripts content, you can just comment out the next line after some more dirlist types are added or removed.
if [[  -f "./$sweep"  ]]; then
	rm ./$sweep;
	echo -e "$timestamp\n$projectRoot/sourceCreate/$sweep\n'Taken care of..'\n=======\n" >> $logs/createLogs/scriptList.txt;
fi;

if ! [[  -f "./$sweep"  ]]; then
	touch $sweep;
	echo -e "$timestamp\n$projectRoot/sourceCreate/$sweep\nCreated\n=======\n" >> $logs/createLogs/scriptList.txt;
	chmod +x $sweep;
	echo "#!/bin/bash" > $sweep;

##+++A
#	echo "rm $aaa" >> $sweep;

##+++B
	echo "rm $bbb" >> $sweep;
	
##+++C
#	echo "rm $ccc" >> $sweep;
	
##+++D
#	echo "rm $ddd" >> $sweep;
	
##+++E
#	echo "rm $eee" >> $sweep;
	
##+++F
#	echo "rm $fff" >> $sweep;
fi;
