#!/bin/sh

# Create a list of commands for the mkdocs.yml file, all commented out,
# as placeholders for the full documentation.

cd ../../cdss-app-statedmi-main/doc/UserManual/Word
ls -1 60_Command_*doc | cut -d '_' -f 3 | cut -d '.' -f 1 | while read command
do
	echo "  - ${command}: command-ref/${command}/${command}.md"
done
