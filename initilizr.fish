#!/usr/bin/env fish

curl https://start.spring.io/starter.zip --create-dirs -o ./spring/spring.zip \
	-d type=gradle-project \
	-d language=kotlin \
	-d bootVersion=2.1.4.RELEASE \
	-d groupId=io.pivotal.shinyay \
	-d artifactId=sample \
	-d name=spring-app \
	-d description="Sample project for Spring Boot" \
	-d packageName=io.pivotal.shinyay \
	-d packaging=jar \
	-d javaVersion=1.11 \
	-d dependencies=web,actuator
