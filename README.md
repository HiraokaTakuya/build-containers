# cpp-docker-container

This is a repository for setting up a container for C++ builds.

## Starting the Container

```
docker compose run --rm -e HOST_UID=$(id -u) -e HOST_GID=$(id -g) llvm18 bash
```

## License

MIT
