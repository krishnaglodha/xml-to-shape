#!/bin/bash

for FILE in *.xml # cycles through all files in directory (case-sensitive!)
do
    echo "converting file: $FILE..."
    FILENEW=`echo $FILE | sed "s/.xml/_new.shp/"` # replaces old filename
    ogr2ogr \
    -f "ESRI Shapefile" \
    "$FILENEW" "$FILE"
done
exit