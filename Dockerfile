FROM openjdk:7
WORKDIR /ms-pdf2img/v1
COPY . .
EXPOSE 8086
CMD java target/helloworld-1.0-SNAPSHOT.jar
