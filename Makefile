TIME=`date +"%A,%e %B %Y at %r"`
NAME=webstats.html

# add a human-readable timestamp to the webstats page in a hackish way... :-)
webstats_edited: ${NAME}
	sed -i "/magic, wow! what time is it, sed?/!b;n;c<i>This page was last updated on ${TIME}</i>" ${NAME}
	cp ${NAME} `basename -s .html ${NAME}` # clean URL support
