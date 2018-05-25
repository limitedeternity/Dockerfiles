FROM alpine:edge

RUN apk add --no-cache netcat-openbsd mongodb bash && rm /usr/bin/mongoperf

COPY scripts /scripts
RUN chmod +x /scripts/*.sh
RUN touch /.firstrun

# Command to run
ENTRYPOINT ["bash", "/scripts/run.sh"]
CMD [""]

# Expose listen port
EXPOSE 27017

STOPSIGNAL SIGTERM

# Expose our data volumes
VOLUME ["/data"]
