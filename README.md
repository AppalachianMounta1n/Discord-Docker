# Discord-Docker
Ok so look. I found a repository I wanted to try to use because my partner wanted to run Discord in Docker, but I wanted to make a `docker-compose` for it instead of just a Dockerfile. So I went down a massive rabbit hole converting the Dockerfile from https://github.com/davidk/docker-discord into a `docker-compose`, and the Dockerfile in this repo is from that repo.

# Getting Started
Run the following commands to set up the image
- `export GID=$(id -g)`
- `export AUDIO_GID=$(getent group audio | cut -d: -f3)`
- `docker compose up --build -d`