# SSH LAB

## Commands

Clone the repo

Launch lab

```shell
docker-compose up -d
```

Get all containers IPs

```shell
docker ps -q | xargs -n 1 docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} {{ .Name }}' | sed 's/ \// /'
```

Delete all containers

```shell
for names in $(docker ps -a --format "{{.Names}}"); do docker rm -f $names; done
```

# uniminuto-sr
