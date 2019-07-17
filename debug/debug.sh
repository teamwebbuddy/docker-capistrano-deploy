#!/bin/bash

# run docker-compose
docker-compose --file docker-compose.yml build
docker-compose --file docker-compose.yml run debug /bin/sh
docker-compose --file docker-compose.yml down
