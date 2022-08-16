#!/bin/sh

sudo docker run --privileged -it \
    --detach-keys "ctrl-a" \
    --restart unless-stopped \
    -p 8787:8787 -p 5559:5559 \
    -e USER_PREFIX=rmed \
    -e GH_REPO=https://github.com/skadauke/intro-to-r-for-clinical-data-rmed2022 \
    -e R_PACKAGES=shiny,flexdashboard,plotly,DT,markdown \
    -e N_USERS=200 \
    -e PW_SEED=12345 \
    -e RSP_LICENSE=$RSP_LICENSE \
    -v "$PWD/server-pro/conf/":/etc/rstudio \
    skadauke/rwb-train