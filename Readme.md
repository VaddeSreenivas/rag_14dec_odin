# creating virtual envirnment and activated it
# To craete a vertual machine following commands for windows
 Get-ExecutionPolicy
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
.\rag_web\scripts\activate

# we used commands like pwd to check the current Working Directory
# New-Item -Path "Readme.md" -ItemType "File" is a new file we craeted to write the steps we followed  in  this project 
# pip install -r requirements.txt
# python.exe -m pip install --upgrade pip

# git add filename, git add .
# git status 
# streamlit run app.py - to run streamlit application

streamlit run your_script_name.py --server.port=8509

The specifies the port number on which the server will lisen for incomming connections. Port 80 is the default port for HTTP traffic

host="0.0.0.0"
This allows the server to accept connections from any IP address , whether it's from the same machine 
(localhost) or a remote device on the network.


"127.0.0.1": Binds the server only to the local  machine. Connections can only be made from the same machine
(localhost).


docker build -t "give_name:version" .
docker build -t myrag:v1 .
docker run -p 8080:8080 myrag:v1

docker run -it my_image:v2 /bin/bash to get inside an image

docker build -t hello .
docker run -p 8080:80 hello


-t your-image-name: Assigns a name (and optionally a tag) to your Docker image. Replace your-image-name with a meaningful name (e.g., my-python-app). .: Refers to the current directory, where the Dockerfile is located.

-d: Runs the container in detached mode (in the background). -p 8080:80: Maps port 8080 on your host machine to port 80 in the container. The first number (8080) is the port on your machine. The second number (80) is the port inside the container as specified in the EXPOSE instruction. --name your-container-name: Assigns a name to the running container (e.g., my-python-container). your-image-name: The name of the image you built (e.g., my-python-app).

local repo-github-image-google artifact registry to store images-Deploy it in Google Kubernetes Engine

console.google.com search for artifact registry and create a repo install google cloud cli gcloud --version or gcloud auth login

gcloud auth login gcloud config set project my-gcp-project

docker build -t us-central1-docker.pkg.dev/my-gcp-project/my-repo/myapp:v1 .

docker push us-central1-docker.pkg.dev/my-gcp-project/my-repo/myapp:v1

---- AI news geenrator python3.11 -m venv ai_news source ai_news/bin/activate # On Windows: myenv\Scripts\activate pip install crewai crewai-tools

Docker Installation and Version docker --version Purpose: Shows the installed Docker version. docker info Purpose: Displays detailed system information about Docker, including number of containers, images, etc.

docker pull Purpose: Downloads a Docker image from Docker Hub or another repository. Example: docker pull nginx docker images Purpose: Lists all the images stored locally. 
docker rmi Purpose: Removes a specific Docker image. Example: docker rmi nginx 
docker build -t . Purpose: Builds a Docker image from a Dockerfile in the current directory. Example: docker build -t myapp .

Working with Docker Containers docker run Purpose: Creates and starts a container from a specified image. Example: docker run nginx docker run -d Purpose: Starts a container in detached mode (runs in the background). Example: docker run -d nginx docker run -it Purpose: Runs a container interactively, allowing you to interact with its shell. Example: docker run -it ubuntu docker ps Purpose: Lists running containers. docker ps -a Purpose: Lists all containers (running and stopped). docker stop Purpose: Stops a running container. Example: docker stop 123abc docker start Purpose: Starts a stopped container. Example: docker start 123abc docker restart Purpose: Restarts a container. Example: docker restart 123abc docker rm Purpose: Removes a container. Example: docker rm 123abc

Cleaning Up docker system prune Purpose: Removes all stopped containers, unused networks, dangling images, and build caches. docker image prune Purpose: Removes unused Docker images. docker container prune Purpose: Removes all stopped containers. docker volume prune Purpose: Removes all unused volumes.

**Use a valid Python base image**
FROM python:3.12.6

**Set the working directory inside the container**
WORKDIR /app

**Copy application files to the container**
COPY . /app

**Install dependencies from requirements.txt**
RUN pip install --no-cache-dir -r requirements.txt

**Expose the port Streamlit will run on**
EXPOSE 8080

**Define the default command to run the Streamlit app**
CMD ["streamlit", "run", "app2.py", "--server.port=8080", "--server.address=0.0.0.0"]
