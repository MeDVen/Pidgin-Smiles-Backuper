#!/bin/bash

PIDGIN_LOCATION=.purple
CURRENT_DATE=$(date +"%Y.%m.%d_%H_%M")

if [ "$1" = "--pack" ] ; then
	echo "Packaging pidgin custom smiles..."
	cd ~
	tar -cvzf ~/$CURRENT_DATE'_backupPidginSmiles.tar.gz' $PIDGIN_LOCATION/custom_smiley/ $PIDGIN_LOCATION/smileys.xml
	echo "Backup succesfully saved in your home folder!"
elif [ "$1" = "--unpack" ] ; then
	echo "Extracting custom smiles from backup to pidgin folder..."
	tar -xvf "$2" -C ~/
elif [ "$1" = "--help" ] ; then
	echo '#-----------------------------------------------------------------------------------------#'
	echo '#----------------------------Pidgin Custom Smiles Backuper--------------------------------#'
	echo '#-----------------------------------------------------------------------------------------#'
	echo '1) If you want to pack you smiles use command like this:'
	echo './backupPidginSmiles.sh --pack'
	echo 'Near to you script file will be created archive with backup.'
	echo 'For example archive name looks like this 2016.01.01_23_10_backupPidginSmiles.tar.gz'
	echo ''
	echo '#------------------------------------------------------------------------------------------#'
	echo '2) If you want to unpack you smiles use command like this:'
	echo './backupPidginSmiles.sh --unpack 2016.01.01_23_10_backupPidginSmiles.tar.gz'
	echo 'Where 2016.01.01_23_10_backupPidginSmiles.tar.gz is you backup archive.'
	echo 'You may specify full path to your archive.'
	echo 'The command would look like this:'
	echo './backupPidginSmiles.sh --unpack /your/full/path/2016.01.01_23_10_backupPidginSmiles.tar.gz'
	echo '#------------------------------------------------------------------------------------------#'
	echo ''
	echo '2016 - Author MeDVen'
else
	echo 'Use --help.'
fi
