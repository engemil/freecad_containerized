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


## TODO

- FIX bugs:
    - Alternative to `freecad --pass --no-sanbox` ???
        - `[26:26:0519/173559.999199:ERROR:zygote_host_impl_linux.cc(90)] Running as root without --no-sandbox is not supported. See https://crbug.com/638180.`
        - `Unrecognised argument '--no-sandbox'`
    - `[199:205:0519/174145.091597:ERROR:command_buffer_proxy_impl.cc(141)] ContextResult::kTransientFailure: Failed to send GpuChannelMsg_CreateCommandBuffer.`
    - Figure out how to set it up with the newest freecad version
        - Inspiration? https://github.com/bombillazo/FreeCAD-Docker-Image
        

