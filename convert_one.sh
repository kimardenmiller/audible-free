#!/usr/bin/env bash

#ACTIVATION_BYTES=${} # Seems to need to be manually entered as you can see this value below.
SOURCE_DIR='/Users/kimardenmiller/Downloads'
SOURCE_FILE='TheSoundandtheFuryUnabridged'
SOURCE_PATH=${SOURCE_DIR}/${SOURCE_FILE}.aax
OUTPUT_DIR='/Volumes/Document External Archive/Audible Library'
OUTPUT_PATH=${OUTPUT_DIR}/${SOURCE_FILE}

ffmpeg -activation_bytes activation_bytes_here -i "${SOURCE_PATH}" -vn -c:a copy "${OUTPUT_PATH}".m4a;mv "${OUTPUT_PATH}".m4{a,b}
