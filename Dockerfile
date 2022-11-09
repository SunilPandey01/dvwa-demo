#
# Build stage
#
FROM maven:alpine as build
ENV HOME=/usr/cyber-security-sample-vulnerable
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
ADD pom.xml $HOME
RUN mvn verify --fail-never
ADD . $HOME
RUN mvn package
