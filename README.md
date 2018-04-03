# Dockerized Prometheus
User friendly Prometheus docker image than prom/prometheus.

## Feature
- Explicitly `EXPOSE 9090`
- Runs without any configuration OR
  - Attach your `prometheus.yml` to `/config`
  - Backup your data from `/data`

## How to use:
You can test it using
```
docker run --rm -p 9090:9090 rickykurniawanlie/prometheus
```

And use your custom config and store bind a data
```
docker run --rm  \
  --publish 9090:9090 \
  --volume /path/to/file/prometheus.yml:/config/prometheus.yml \
  --volume /path/to/storage:/data \
  rickykurniawanlie/prometheus
```
