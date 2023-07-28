#! /bin/bash

jekyll build && rsync -zrp _site/* fvdev3:~/vhosts/ami-website.fablevision-dev.com/