# Standalone Sidekiq Dashboard

A simple Docker container that runs the Sidekiq dashboard as a standalone
service. This is intended for local development purposes only.

# Build and Run
```shell
docker build -t standalone-sidekiq .
# `--network=host` allows the docker container to connect to a redis instance running on localhost
docker run --network=host standalone-sidekiq
# You can customize the redis url if needed
docker run --network=host -e REDIS_URL='redis://localhost:6380' standalone-sidekiq
```
