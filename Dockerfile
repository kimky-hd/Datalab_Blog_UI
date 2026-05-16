# Stage 1: Build the application using Maven
FROM maven:3.9.6-eclipse-temurin-21 AS build
WORKDIR /app

# Copy the pom.xml and source code
COPY pom.xml .
COPY src ./src

# Package the application (skip tests for faster build)
RUN mvn clean package -DskipTests

# Stage 2: Deploy the application to Tomcat
FROM tomcat:10.1-jdk21
# Set environment variables for Tomcat
ENV TZ=Asia/Ho_Chi_Minh

# Remove default Tomcat apps to keep it clean (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT \
    && rm -rf /usr/local/tomcat/webapps/docs \
    && rm -rf /usr/local/tomcat/webapps/examples \
    && rm -rf /usr/local/tomcat/webapps/manager \
    && rm -rf /usr/local/tomcat/webapps/host-manager

# Copy the built WAR file from the build stage to Tomcat's webapps directory
# Renaming it to ROOT.war so it serves as the default application (at /)
COPY --from=build /app/target/Datalab_Blog_UI-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
