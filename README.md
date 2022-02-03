# spatialcitizenscience-docker

### Docker files and example setup for spatialcitizenscience
[![stability-experimental](https://img.shields.io/badge/stability-experimental-orange.svg)]() 

This repository contains the ressources for a simple installation of [spatialcitizenscience](https://github.com/jlu-ilr-hydro/spatialcitizenscience) 
in a [docker container](https://docs.docker.com/).

## Installation

We assume your installation place is here: `/srv/spatialcitizenscience` and your user is part of the `docker` group.

```bash
export SPC_HOME='/srv/spatialcitizenscience'
sudo mkdir $SPC_HOME
sudo chown $USER:docker $SPC_HOME
cd $SPC_HOME
git clone https://github.com/jlu-ilr-hydro/spatialcitizenscience-docker .
docker-compose build
```

## Configuration

### docker-compose.yml

This file should be ok for you, but check eg the port configuration

### app/config.yml

This is the main configuration of your spatial.citizenscience web app.

### app/index.md

The landing page, written with Markdown

### app/about.md

The about page, needed in most jurisdication for legal reasons, stating who you are, what data you are collecting, etc.


