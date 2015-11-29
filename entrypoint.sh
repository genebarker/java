#!/bin/bash
set -e
echo "java - a headless Java JRE on Debian 8 Docker Container"

APP_HOME="/root/home"

if [ "$#" != "0" ]; then
    cd $APP_HOME
    CMD="$1"
    if [ ${CMD:0:1} == "-" ] || [ -f "$CMD.class" ]; then
        exec java "$@"
        exit
    else
        exec "$@"
        exit
    fi
fi

echo
echo "usage: genebarker/java [-options] class [args...]"
echo "                      (to execute a class)"
echo "   or  genebarker/java [-options] -jar jarfile [args...]"
echo "                      (to execute a jar file)"
echo 
echo "The application home folder is: /root/home"
echo
echo "To run the sample HelloWorld.class:"
echo "  $ docker run --rm genebarker/java HelloWorld"
echo
echo "To run your java app, just mount its folder then run:"
echo "  $ docker run --rm \\"
echo "      -v /home/me/myapps:/root/home \\"
echo "      genebarker/java MyHelloWorld"
echo
echo "To get java command line help:"
echo "  $ docker run --rm genebarker/java -help"
echo 
echo "To bypass script, just enter desired command, i.e.:"
echo "  $ docker run -it genebarker/java bash"
echo
echo "Java version"
echo "------------"
java -version
echo
echo "Debian version"
echo "--------------"
echo -n "Version: "
cat /etc/debian_version
echo -n "Kernal: "
uname -r

exit 0
