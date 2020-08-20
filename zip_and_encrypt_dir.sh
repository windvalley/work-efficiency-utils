#!/bin/bash
# zip_and_encrypt_dir.sh
#


set -u


DIR=$1


zip -e -r ${DIR}.zip ${DIR}

