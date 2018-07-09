# python-docker-lab

Command | Description
--|--
`docker build -t hello-app .` | Build image
`docker run -p 5000:5000 -v $PWD:/usr/src/hello_app --name flask-app hello-server` | Run the container with hot reload
``