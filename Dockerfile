FROM java:8
Maintainer Dave Thompson dave.b.thompson@centurylink.net
ENV foo bar
ENV REL_VER 8.1.1
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir /home/root/stuff
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]