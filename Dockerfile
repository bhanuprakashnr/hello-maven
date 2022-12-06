FROM   maven:3.8-openjdk-18
RUN git clone https://github.com/divyabahu/hellojar.git	
WORKDIR  hellojar
RUN mvn clean
RUN mvn compile
RUN mvn package
RUN mvn install
WORKDIR  target/
CMD ["java","-jar","helloExample1-0.0.1-SNAPSHOT.jar"]
#ENTRYPOINT ["tail","-f","/dev/null"]

