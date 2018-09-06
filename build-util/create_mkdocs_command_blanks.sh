#!/bin/sh

# Create blank MkDocs documents for each command, as placeholders to be filled out from Word documentation.

cd ../../cdss-app-statedmi-main/doc/UserManual/Word
ls -1 60_Command_*doc > ../../../../cdss-app-statedmi-doc-user/build-util/command-list.log
cd ../../../../cdss-app-statedmi-doc-user/build-util
cat command-list.log | cut -d '_' -f 3 | cut -d '.' -f 1 | while read command
do
	echo "Processing ${command}"
	# Create the folder for the command reference
	commandRefFolder="../mkdocs-project/docs/command-ref"
	if [ ! -d "${commandRefFolder}" ]
	then
		mkdir -p ${commandRefFolder}
	fi
	# Create the folder for the command
	commandFolder="${commandRefFolder}/${command}"
	if [ ! -d "${commandFolder}" ]
	then
		mkdir ${commandFolder}
	fi
	# Copy the template to the final location
	commandFile="${commandRefFolder}/${command}/${command}.md"
	cp command_blank.md ${commandFile}
	# Replace the placeholder with the specific command name
	sed -i "s/COMMAND_PLACEHOLDER/${command}/g" ${commandFile}
done

rm command-list.log
