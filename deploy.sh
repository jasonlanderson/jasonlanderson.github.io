#!/bin/bash
jekyll build
cp -r subfolders/* _site
cf api api.ng.bluemix.net
cf target -o janderson@compthree.com -s dev
cf push
