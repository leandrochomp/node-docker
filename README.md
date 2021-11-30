# Node-Docker
Project to create a Docker image using [3musketeers](https://3musketeers.io/) pattern with a node [express](https://expressjs.com/) 

## Install the prerequisite software 
* WSL (for windows users) - [What is the WSL](https://docs.microsoft.com/en-us/windows/wsl/about)
    * [wsl](https://docs.microsoft.com/en-us/windows/wsl/install)  
    * [ubuntu](https://ubuntu.com/wsl)
* [Docker](https://docs.docker.com/engine/install/)
* [Docker Compose](https://docs.docker.com/compose/install/)
* [Make](https://www.gnu.org/software/make/)

Windows: Recommend to install via [chocolatey](https://community.chocolatey.org/packages/make) 

MacOS: [Brew](https://formulae.brew.sh/formula/make)

Linux: 
```sh
sudo apt-get install build-essential
```
or 
```sh
sudo apt-get -y install make
```
also avaible via Brew

## Available Scripts

In the project directory, you can run:
```sh
make buid
```
```sh
make init
```

```sh
make install
```

After make install, open your browser into http://localhost:8080

References:
[Auth0 Blog](https://auth0.com/blog/use-docker-to-create-a-node-development-environment/#-a-class--toc-target--id--creating-the-project-foundation----a-Creating-the-Project-Foundation)

[Fireship.io](https://fireship.io/lessons/docker-basics-tutorial-nodejs/)
