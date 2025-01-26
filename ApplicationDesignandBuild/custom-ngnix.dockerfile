# Use the official Nginx image from the Docker Hub
FROM ubuntu:latest

LABEL version="1.0.0"
LABEL maintainer="value"

# Install the Nginx package from the Ubuntu repository
RUN apt-get update
RUN	apt-get install -y nginx && 
	
#Export the ports
EXPOSE 80

# last command to run the ngnix server in the container
CMD ["nginx", "-g", "daemon off;"]