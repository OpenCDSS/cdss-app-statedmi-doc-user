#!/bin/sh
#
# Script to copy legacy Word/PDF documentation png files to new folders so that MkDocs does not complain.

# Get the folder where this script is located since it may have been run from any folder.
scriptFolder=$(cd $(dirname "$0") && pwd)
# Change to the folder where the script is since other actions below are relative to that.
cd ${scriptFolder}

mkdocsCommandRefFolder="../mkdocs-project/docs/command-ref"
legacyGraphicsFolder="../../cdss-app-statedmi-main/doc/UserManual/graphics"
ls -1 ${legacyGraphicsFolder}/c_* | \
while read filename; do
  # Get the basename of the file and cut out c_ to get command name.
  commandPngFileOrig=$(basename ${filename})
  commandPngFileNew=$(echo ${commandPngFileOrig} | cut -c 3-)
  commandName=$(echo ${commandPngFileOrig} | cut -c 3- | cut -d . -f 1)
  #echo ${commandName} ${commandPngFileOrig} ${commandPngFileNew}
  # If a command_ref folder exists for the command, copy the image file.
  mkdocsCommandFolder="${mkdocsCommandRefFolder}/${commandName}"
  if [ -d "${mkdocsCommandFolder}" ]; then
    echo "Command folder exists:  ${mkdocsCommandFolder}"
    # Do the copy:
    # - comment out since done before
    #cp ${legacyGraphicsFolder}/${commandPngFileOrig} ${mkdocsCommandFolder}/${commandPngFileNew}
  els}e
    echo "Command folder does not exist:  ${mkdocsCommandFolder}"
  fi
done
