#!/bin/bash

defvalue="extension"
defver="80.0.3987.162"

EXTENSION_ID=${1}
NAME=${2:-$defvalue}
VERSION=${3:-$defver}

echo $EXTENSION_ID
echo $NAME
echo $VERSION

URL="https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=$VERSION&x=id%3D$EXTENSION_ID%26installsource%3Dondemand%26uc"

wget -O ~/Downloads/$NAME.crx $URL


