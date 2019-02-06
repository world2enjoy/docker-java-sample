FROM openjdk:7
COPY . /ms-pdf2img
WORKDIR /ms-pdf2img/v1
EXPOSE 8086
CMD java target/helloworld-1.0-SNAPSHOT.jar
