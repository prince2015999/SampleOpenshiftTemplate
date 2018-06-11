FROM java:8
VOLUME /tmp
ADD build/libs/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
COPY template3.json .
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar", "app.jar"]
