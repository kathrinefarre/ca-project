# Dockerfile for our python app

# Add a base image to build this image off of
FROM ubuntu:16.04 

# Run this shit
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential


# Somehow copy the app to Docker
RUN mkdir /usr/src/ca-project
COPY ./ /usr/src/ca-project/

RUN pip install -r /usr/src/ca-project/requirements.txt

# Add a default port containers from this image should expose
EXPOSE 5000

# Add a default command for this image
CMD ["python", "/usr/src/ca-project/run.py"]
