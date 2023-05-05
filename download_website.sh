#!/bin/bash

wget --recursive --page-requisites --adjust-extension --span-hosts --convert-links --restrict-file-names=windows --domains $1 --no-parent $1

# wget \
#      -O $3 \
#      --recursive \ # Download the whole site.
#      --page-requisites \ # Get all assets/elements (CSS/JS/images).
#      --adjust-extension \ # Save files with .html on the end.
#      --span-hosts \ # Include necessary assets from offsite as well.
#      --convert-links \ # Update links to still work in the static version.
#      --restrict-file-names=windows \ # Modify filenames to work in Windows as well.
#      --domains $1 \ # Do not follow links outside this domain.
#      --no-parent \ # Don't follow links outside the directory you pass in.
#          $2 || $1 # The URL to download

