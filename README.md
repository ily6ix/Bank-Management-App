docker build -t my-glassfish5-app .
docker run -p 8080:8080 -p 4848:4848 my-glassfish5-app
