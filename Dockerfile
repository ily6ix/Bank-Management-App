# Use OpenJDK 8 as base
FROM openjdk:8-jdk

# Set environment variables
ENV GLASSFISH_HOME=/opt/glassfish5
ENV PATH=$PATH:$GLASSFISH_HOME/bin

# Download GlassFish 5.1
RUN apt-get update && apt-get install -y wget unzip && \
    wget -q https://download.eclipse.org/ee4j/glassfish/glassfish-5.1.0.zip && \
    unzip glassfish-5.1.0.zip -d /opt && \
    rm glassfish-5.1.0.zip

# Copy your WAR into autodeploy folder
COPY bank.war $GLASSFISH_HOME/glassfish/domains/domain1/autodeploy/bank.war

# Expose HTTP (8080) and Admin (4848) ports
EXPOSE 8080 4848

# Start GlassFish domain
CMD ["asadmin", "start-domain", "-v"]








