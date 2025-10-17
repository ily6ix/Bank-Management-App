FROM openjdk:8-jdk

ENV GLASSFISH_HOME=/opt/glassfish5
ENV PATH=$PATH:$GLASSFISH_HOME/bin

RUN apt-get update && apt-get install -y wget unzip && \
    wget -qO /tmp/glassfish.zip https://download.eclipse.org/ee4j/glassfish/glassfish-5.1.0.zip && \
    unzip /tmp/glassfish.zip -d /opt && \
    rm /tmp/glassfish.zip

COPY bank.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/bank.war

EXPOSE 8080 4848

CMD ["asadmin", "start-domain", "-v"]
