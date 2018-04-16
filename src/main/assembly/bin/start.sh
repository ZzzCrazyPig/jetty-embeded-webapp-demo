#!/bin/sh

#check JAVA_HOME & java
noJavaHome=false
if [ -z "$JAVA_HOME" ] ; then
    noJavaHome=true
    fi
    if [ ! -e "$JAVA_HOME/bin/java" ] ; then
        noJavaHome=true
	fi
	if $noJavaHome ; then
	    echo
	    echo "Error: JAVA_HOME environment variable is not set."
		echo
		exit 1
	fi
RUN_CMD="\"$JAVA_HOME/bin/java\""
RUN_CMD="$RUN_CMD -jar ../jetty-embeded-webapp-demo.war"
#echo $RUN_CMD
eval $RUN_CMD
