## Java

Headless Java JRE (OpenJDK) on Debian 8 (Jessie).

### Improvements

This production proven image of headless Java on Debian just got a little better... Enjoy!

- upgraded OS to Debian 8.9
- upgraded OpenJDK Runtime Environment to 1.8.0_131

## How to Use
For usage info, just run the image without a command:

```Text
$ docker run --rm genebarker/java
```

Which produces the following:

```Text
java - a headless Java JRE on Debian 8 Docker Container

usage: genebarker/java [-options] class [args...]
                      (to execute a class)
   or  genebarker/java [-options] -jar jarfile [args...]
                      (to execute a jar file)

The application home folder is: /root/home

To run the sample HelloWorld.class:
  $ docker run --rm genebarker/java HelloWorld

To run your java app, just mount its folder then run:
  $ docker run --rm \
      -v /home/me/myapps:/root/home \
      genebarker/java MyHelloWorld

To get java command line help:
  $ docker run --rm genebarker/java -help

To bypass script, just enter desired command, i.e.:
  $ docker run -it genebarker/java bash

Java version
------------
openjdk version "1.8.0_131"
OpenJDK Runtime Environment (build 1.8.0_131-8u131-b11-1~bpo8+1-b11)
OpenJDK 64-Bit Server VM (build 25.131-b11, mixed mode)

Debian version
--------------
Version: 8.9
Kernal: 3.16.0-4-amd64
```
