FROM openjdk:17-jdk

ARG JAR_FILE=build/libs/configservice-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "-Drepo.path=${REPO_PATH}", "-Drepo.uri=${REPO_URI}", "-Drepo.branch=${REPO_BRANCH}", "app.jar"]

EXPOSE 3999

# repo.path=configs;repo.uri=https://github.com/AnonymousCIS/projectConfigs.git;repo.branch=main