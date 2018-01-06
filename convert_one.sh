#!/usr/bin/env bash

#Requires AUDIBLE_ACTIVATION environment variable (best set using EnvPane @ https://github.com/hschmidt/EnvPane)
SOURCE_DIR='/Users/kimardenmiller/Downloads'
SOURCE_FILE='PowerfullyConfidentInternetDatingBetheGuyThatWomenWanttoMeetOnlineUnabridged'
SOURCE_PATH=${SOURCE_DIR}/${SOURCE_FILE}.aax
OUTPUT_DIR='/Volumes/Document External Archive/Audible Library'
OUTPUT_PATH=${OUTPUT_DIR}/${SOURCE_FILE}

ffmpeg -activation_bytes ${AUDIBLE_ACTIVATION} -i "${SOURCE_PATH}" -vn -c:a copy "${OUTPUT_PATH}".m4a;mv "${OUTPUT_PATH}".m4{a,b}
