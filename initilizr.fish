#!/usr/bin/env fish

set -g BOOT_VERSION 2.1.4.RELEASE
set -g GROUP_ID io.pivotal.shinyay
set -g ARTIFACT_ID sample
set -g NAME spring-app
set -g DESCRIPTION "Sample project for Spring Boot"
set -g PACKAGE $GROUP_IS
set -g DEPENDENCY web,actuator

curl https://start.spring.io/starter.zip --create-dirs -o ./spring/spring.zip \
	-d type=gradle-project \
	-d language=kotlin \
	-d bootVersion=$BOOT_VERSION \
	-d groupId=$GROUP_ID \
	-d artifactId=$ARTIFACT_ID \
	-d name=$NAME \
	-d description=$DESCRIPTION \
	-d packageName=$GROUP_ID \
	-d packaging=jar \
	-d javaVersion=1.11 \
	-d dependencies=$DEPENDENCY
