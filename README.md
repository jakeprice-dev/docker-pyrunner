# Docker Python Runner

A simple enough container with dependencies installed for various scripts and services I run on my home server. This avoids the need for me to install any dependencies on the server itself.

## Run

```sh
docker run \
    --rm \
    --tty \
    --volume "$PWD/:/app" \
    pyrunner:latest python3 <script>.py
```

