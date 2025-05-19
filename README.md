# FreeCad Containerized

!WORK-IN-PROGRESS!

FreeCad containerized for replicable development environment.


## Run on Ubuntu Host Computer

Prerequisite(s):
- Install Docker (Recommend Docker Engine for Ubuntu): https://docs.docker.com/engine/install/ubuntu/

Setup
- Open terminal and pull this repo: `git pull <repo-link>`
- Change current directory to the `.container`-folder in the repo: `cd freecad_containerized/.container`
- Run setup script: `sudo chmod +x ./setup.sh` and `./setup.sh`
- Spin up the container: `docker compose up -d`
    - Alterantively: `sudo chmod +x ./start.sh` and `./start.sh`
- Make a new project e.g. in the `project`-folder.
- To spin down the container: `docker compose down`
    - Alterantively: `sudo chmod +x ./stop.sh` and `./stop.sh`


## Run on Windows 11 Host Computer

Prerequisite(s):
- Docker (e.g. Docker Desktop)
- WSL2 + integrated with Docker (e.g. **Use the WSL 2 based engine** in Docker Desktop).
- Setup a Linux Distro (e.g. Ubuntu) in WSL2

**NB!** Recommend to work from the WSL2 ubuntu file system and Ubuntu terminal

Setup
- Open terminal and pull this repo: `git pull <repo-link>`
- Change current directory to the `.container`-folder in the repo: `cd freecad_containerized/.container`
- Spin up the container: `docker compose up -d`
    - Alterantively: `sudo chmod +x ./start.sh` and `./start.sh`
- Make a new project e.g. in the `project`-folder.
- To spin down the container: `docker compose down`
    - Alterantively: `sudo chmod +x ./stop.sh` and `./stop.sh`


## Good to Know
- Problems running the `start.sh` or `stop.sh` scripts? Try to fix it with `dos2unix`
    - Install: `sudo apt install dos2unix`
    - Run: `dos2unix ./start.sh`
    - Now the `./start.sh` script will be able to run


