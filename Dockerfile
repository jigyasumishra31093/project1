FROM radut/openjdk-13:latest

# Add Maintainer Info
LABEL maintainer="jigyasu.mishra@volansys.com"
RUN mkdir /usr/app

WORKDIR /usr/app

COPY target/test.application-1.0.0-SNAPSHOT.jar /usr/app

RUN sh -c 'touch test.application-1.0.0-SNAPSHOT.jar'

EXPOSE 9099

ENTRYPOINT ["java","-jar","test.application-1.0.0-SNAPSHOT.jar"]