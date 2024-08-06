# build-containers

This repository contains container files used for building software.

## Starting containers

```
docker compose run --rm -e HOST_UID=$(id -u) -e HOST_GID=$(id -g) clang-18 bash
```

## Remove containers

```
docker compose down
```

To remove images too:

```
docker compose down --rmi all
```

## License

MIT
