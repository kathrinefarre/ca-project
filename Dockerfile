# Dockerfile for our python app

# Add a base image to build this image off of
FROM ubuntu:16.04 

# Run this shit
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

#RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

# Somehow copy the app to Docker
#COPY app.py /usr/src/app/

# Add a default port containers from this image should expose
EXPOSE 5000

# Add a default command for this image
