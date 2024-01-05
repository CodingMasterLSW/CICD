# 베이스 이미지로 Java 17 이미지를 사용
FROM openjdk:17-slim

# 인자 정리 - Jar
ARG JAR_FILE=build/libs/*.jar

# jar File Copy
COPY ${JAR_FILE} app.jar

# 컨테이너가 시작될 때 실행할 명령 설정
ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar","app.jar"]