#!/bin/sh

EXTERNAL_DISK="/Volumes/Elements/Media/" # Change to the name of your External Disk an die Lociation of the Media
PLEX_MEDIA_DIRECTORY="/Media/" # Change to the path of our Media for the Plex Server

# Check if External Disk is Mounted
if [ -d $EXTERNAL_DISK ]
then
    # Check if Local Media Storage is Existing
    if [ -d $PLEX_MEDIA_DIRECTORY ]
    then
        # Copy Movies
        cp -r "${EXTERNAL_DISK}Movies/" "${PLEX_MEDIA_DIRECTORY}Movies/"

        # Copy TV Series
        cp -r "${EXTERNAL_DISK}TV Serien/" "${PLEX_MEDIA_DIRECTORY}TV Serien/"
    else
        say "Can't find Plex Directory"
    fi
else
    say "Can't find External Disk"
fi
