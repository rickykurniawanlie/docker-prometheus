FROM prom/prometheus:v2.2.0-rc.0
# https://hub.docker.com/r/prom/prometheus/tags/

USER root

COPY prometheus.yml /config/prometheus.yml
VOLUME /config
VOLUME /data

EXPOSE 9090

ENTRYPOINT [ "/bin/prometheus" ]
CMD        [ "--config.file=/config/prometheus.yml", \
             "--storage.tsdb.path=/data" ]
