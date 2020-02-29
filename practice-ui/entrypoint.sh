#!/bin/sh

dos2unix ./src/Config/genEnvVar.sh

cd ./src/Config

/bin/bash /opt/data/app/src/Config/genEnvVar.sh "$1" "$2" "$3"

cd ../..

ojet serve