# Use the official GlassFish image
FROM glassfish:6.2.5-jdk17

# Copy your WAR file into the autodeploy folder
COPY bank.war /glassfish5/glassfish/domains/domain1/autodeploy/app.war

# Expose GlassFish default ports
EXPOSE 8080 4848

# Start the GlassFish domain
CMD ["asadmin", "start-domain", "-v"]




