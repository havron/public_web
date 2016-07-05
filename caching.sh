#!/bin/bash
# Set caching and expires policy for S3 static assets in a specified directory

S3_BUCKET=havron.xyz
DIR=$1
s3cmd put --recursive  setacl --acl-public --recursive --remove-header="Expires:" --remove-header="Cache-Control" --add-header="Content-Type:text/css" `pwd`/$DIR/  s3://$S3_BUCKET/$DIR/

# s3cmd put --recursive  setacl --acl-public --recursive --remove-header="Expires:" --add-header='Cache-Control:public, must-revalidate, proxy-revalidate, max-age=0' `pwd`/$DIR/  s3://$S3_BUCKET/$DIR/

#s3cmd put --recursive  setacl --acl-public --recursive --add-header="Expires:`date -u +"%a, %d %b %Y %H:%M:%S GMT" --date "+5 years"`" --add-header='Cache-Control:max-age=31536000, public' `pwd`/$DIR/  s3://$S3_BUCKET/$DIR/
