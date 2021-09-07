FROM Jdk:8

COPY ./target/**.jar /app.jar

ENV TZ=Asia/Shanghai JAVA_OPTS="-Xms256m -Xmx256m -Djava.security.egd=file:/dev/./urandom"

EXPOSE 9876

CMD java -jar  ${JAVA_OPTS} /app.jar