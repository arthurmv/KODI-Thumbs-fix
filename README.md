# KODI Thumbs fix
This script helps to fix KODI thumbnail images that doesn't show correctly and refresh current artwork.

## What does it to do?
Only clean KODI thumbs cache: removes `Thumbnails` folder and `Textures13.db` file. This is useful when you work with KODI the most of time, KODI doesn't fetch new artwork for current media in database, only for new ones, so this will refresh all artwork.

## Portable mode?
If would like to run this script in standard mode just change
* Line 3: KODI path
* Line 4: `userdata` folder
* Line 30: Remove `-p` parameter
