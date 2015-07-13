Java
----
Headless Java JRE (OpenJDK) on Debian 8 (Jessie).

For usage info, just run the image without a command:

```text
$ docker run --rm genebarker/java
```

Which produces the following:

```text
java - a headless Java JRE on Debian 8 Docker Container

usage: genebarker/java [-options] class [args...]
                      (to execute a class)
   or  genebarker/java [-options] -jar jarfile [args...]
                      (to execute a jar file)

The application home folder is: /root/home

To run the sample HelloWorld.class:
  $ docker run --rm genebarker/java HelloWold

To run your java app, just mount its folder then run:
  $ docker run --rm \
      -v /home/me/myapps:/root/home \
      genebarker/java MyHelloWorld

To get java command line help:
  $ docker run --rm genebarker/java -help

To bypass script, just enter desired command, i.e.:
  $ docker run -it genebarker/java bash
```
