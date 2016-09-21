#!/bin/bash
jekyll build
cf api api.ng.bluemix.net
cf target -o janderson@compthree.com -s dev
cf push
