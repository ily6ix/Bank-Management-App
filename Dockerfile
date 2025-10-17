# Use official GlassFish 5.1 (JDK 8) base image
FROM glassfish:5.0-jdk8

# Remove default apps if any
RUN rm -rf /glassfish5/glassfish/domains/domain1/autodeploy/*

# Copy your WAR into the autodeploy folder
COPY bank.war /glassfish5/glassfish/domains/domain1/autodeploy/bank.war

# Expose GlassFish default ports
EXPOSE 8080 4848

# Start GlassFish domain
CMD ["asadmin", "start-domain", "-v"]






