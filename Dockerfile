# Pull the minimal Ubuntu image
FROM nginx

#File maintainer
MAINTAINER "nidhikashyap168@gmail.com"

# update lib
RUN apt-get update && apt-get upgrade -y

# ifconfig
RUN apt-get install -y net-tools

# Copy the Nginx
RUN useradd -m -s /home/nandu -s /bin/bash jack
WORKDIR /home/nandu
ADD target/nature1.war  .
WORKDIR / 

# Run the Nginx server
ENTRYPOINT service nginx start && bash
