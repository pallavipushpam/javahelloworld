FROM java:8
COPY src/home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/helloworld.java
ENTRYPOINT ["java", "-cp", "bin", "HELLOWORLD"]
