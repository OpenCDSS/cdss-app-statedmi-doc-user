#!/bin/sh
#
# Copy the MkDocs site/* contents to the CO DNR GCP website
# - replace all the files on the web with local files

# Supporting functions, alphabetized...

buildMkDocsSite() {
	cd ${mkdocsProjectFolder}
	if [ "$operatingSystem" = "cygwin" -o ${operatingSystem} = "linux" ]; then
		# MkDocs is installed in a standard location
		mkdocs build --clean
	elif [ "$operatingSystem" = "mingw" ]; then
		# Use the Windows Python
		py -m mkdocs build --clean
	else
		echo ""
		echo "Don't know how to run on operating system $operatingSystem"
		exit 1
	fi
}

# Make sure the MkDocs version is consistent with the documentation content
# - require that at least version 1.0 is used because of use_directory_urls = True default
# - must use "file.md" in internal links whereas previously "file" would work
# - it is not totally clear whether version 1 is needed but try this out to see if it helps avoid broken links
checkMkdocsVersion() {
	# Required MkDocs version is at least 1
	requiredMajorVersion="1"
	# On Cygwin, mkdocs --version gives:  mkdocs, version 1.0.4 from /usr/lib/python3.6/site-packages/mkdocs (Python 3.6)
	# On Debian Linux, similar to Cygwin:  mkdocs, version 0.17.3
	if [ "$operatingSystem" = "cygwin" -o "$operatingSystem" = "linux" ]; then
		mkdocsVersionFull=$(mkdocs --version)
	elif [ "$operatingSystem" = "mingw" ]; then
		mkdocsVersionFull=$(py -m mkdocs --version)
	else
		echo ""
		echo "Don't know how to run on operating system $operatingSystem"
		exit 1
	fi
	echo "MkDocs --version:  $mkdocsVersionFull"
	mkdocsVersion=$(echo $mkdocsVersionFull | cut -d ' ' -f 3)
	echo "MkDocs full version number:  $mkdocsVersion"
	mkdocsMajorVersion=$(echo $mkdocsVersion | cut -d '.' -f 1)
	echo "MkDocs major version number:  $mkdocsMajorVersion"
	if [ "$mkdocsMajorVersion" -lt $requiredMajorVersion ]; then
		echo ""
		echo "MkDocs version for this documentation must be version $requiredMajorVersion or later."
		echo "MkDocs mersion that is found is $mkdocsMajorVersion, from full version ${mkdocsVersion}."
		exit 1
	else
		echo ""
		echo "MkDocs major version ($mkdocsMajorVersion) is OK for this documentation."
	fi
}

# Determine the operating system that is running the script
# - mainly care whether Cygwin or MINGW
checkOperatingSystem()
{
	if [ ! -z "${operatingSystem}" ]; then
		# Have already checked operating system so return
		return
	fi
	operatingSystem="unknown"
	os=`uname | tr [a-z] [A-Z]`
	case "${os}" in
		CYGWIN*)
			operatingSystem="cygwin"
			;;
		LINUX*)
			operatingSystem="linux"
			;;
		MINGW*)
			operatingSystem="mingw"
			;;
	esac
}

# Check the source files for issues
# - the main issue is internal links need to use [](file.md), not [](file)
checkSourceDocs() {
	# Currently don't do anything but could check the above
	# Need one line to not cause an error
	:
}

# Get the version modifier:
# - for example, from "4.05.00dev", "4.00.00 dev", "4.00.00beta", or "4.00.00 beta"
# - the first function argument is the full version, possibly including a space
# - the modifier is echoed, so capture by assigning in the calling code
getVersionModifier() {
	local fullVersion
	fullVersion="$1"
	# grep will print each found character on a separate line so concatenate output
	modifier=$(echo $fullVersion | grep -o -E '[[:alpha:]]' | tr -d '\n' | tr -d ' ')
	echo $modifier
}

# Parse the command parameters
parseCommandLine() {
	local d h l opt
	while getopts :dhl opt; do
		#echo "Command line option is ${opt}"
		case $opt in
			d) # Indicate that this should be copied to the latest release and version
				dryrun="-n"
				;;
			h) # Usage
				printUsage
				exit 0
				;;
			l) # Indicate that this should be copied to the latest release and version
				copyToLatest="yes"
				;;
			\?)
				echo "Invalid option:  -$OPTARG" >&2
				exit 1
				;;
			:)
				echo "Option -$OPTARG requires an argument" >&2
				exit 1
				;;
		esac
	done
}

# Print the usage
printUsage() {
	echo ""
	echo "Usage:  $0"
	echo ""
	echo "Copy the site files to the latest website folder if -l specified:  $gsFolderLatest"
	echo "Copy the site files to the versioned website folder:  $gsFolderVersion"
	echo ""
	echo "-d dry run (print actions but don't execute upload)"
	echo "-h print usage"
	echo "-l copy to latest folder in addition to auto-detected version folder"
	echo ""
}

# Sync the files to the cloud
# - if copyToLatest="yes", also sync to latest folder
syncFiles() {
	local exitStat
	exitStat=0
	# Change back to script folder for remaining logic
	cd ${scriptFolder}

	# Now sync the local files up to Google Cloud
	# - the -m option causes operations to run in parallel, which can be much faster
	# - the -d option means delete extra files in destination
	# - the -r option means recursive to sync the whole folder tree
	# For now always upload to the versioned copy
	echo ""
	echo "Copying the documentation to the versioned folder..."
	gsutil.cmd -m rsync -d -r ${dryrun} $siteFolder ${gsFolderVersion}
	exitStat=$?
	if [ $exitStat -ne 0 ]; then
		return $exitStat
	fi
	if [ ${copyToLatest} = "yes" ]; then
		# Also copy the latest
		echo ""
		echo 'Copying the documentation to the "latest" folder...'
		gsutil.cmd -m rsync -d -r ${dryrun} $siteFolder ${gsFolderLatest}
		exitStat=$?
	else
		if [ ! -z "${tstoolVersionModifier}" ]; then
			# Updating to latest is only valid when there is not a version modifier
			echo ""
			echo 'Remember to run with -l option if you want to upload to the "latest" folder.'
			echo ""
		fi
	fi
	return $exitStatus
}

# Entry point for the script

# Check the operating system
checkOperatingSystem

# Make sure the MkDocs version is OK
checkMkdocsVersion

# Check the source files for issues
checkSourceDocs

# Get the location where this script is located since it may have been run from any folder
scriptFolder=`cd $(dirname "$0") && pwd`
gitRepoFolder=$(dirname "$scriptFolder")
gitReposFolder=$(dirname "$gitRepoFolder")
mkdocsProjectFolder=$gitRepoFolder/mkdocs-project
siteFolder=$mkdocsProjectFolder/site
projectFolder="$gitReposFolder/cdss-app-statedmi-main"
srcFolder="$projectFolder/src"
srcMainFolder="${srcFolder}/DWR/DMI/StateDMI"
statedmiFile="${srcMainFolder}/StateDMI.java"
if [ -f "${statedmiFile}" ]; then
	statedmiVersion=$(cat ${statedmiFile} | grep -m 1 'PROGRAM_VERSION' | cut -d '=' -f 2 | cut -d '(' -f 1 | tr -d " " | tr -d '"')
	statedmiModifierVersion=$(getVersionModifier "$statedmiVersion")
else
	echo "Cannot determine StateDMI version because file not found:  ${statedmiFile}"
	exit 1
fi
if [ -z "${statedmiVersion}" ]; then
	echo "Cannot determine StateDMI version by scanning:  ${statedmiFile}"
	exit 1
fi
echo "scriptFolder=$scriptFolder"
echo "gitRepoFolder=$gitRepoFolder"
echo "gitReposFolder=$gitReposFolder"
echo "mkdocsProjectFolder=$mkdocsProjectFolder"
echo "projectFolder=$projectFolder"
echo "srcFolder=$srcFolder"
echo "srcMainFolder=$srcMainFolder"
echo "statedmiFile=$statedmiFile"
echo "statedmiVersion=$statedmiVersion"

# Set --dryrun to test before actually doing
dryrun=""
gsFolderLatest="gs://opencdss.state.co.us/statedmi/latest/doc-user"
gsFolderVersion="gs://opencdss.state.co.us/statedmi/${statedmiVersion}/doc-user"

# Whether to copy to latest in addition to the specific version
# - default to no because the script can be run on any version, and can't assume latest
copyToLatest="no"

# Parse the command line
parseCommandLine $@

if [ ! -z "${tstoolVersionModifier}" -a "$copyToLatest" = "yes" ]; then
	# The version contains "dev" or "beta" so don't allow to be used for "latest"
	echo "TSTool version $tstoolVersion contains modifier - not copying to latest."
	copyToLatest="no"
fi

# First build the site so that the "site" folder contains current content.
# - "mkdocs serve" does not do this
buildMkDocsSite

# Sync the files to the cloud
syncFiles

exit $?
