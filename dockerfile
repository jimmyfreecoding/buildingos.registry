FROM registry:2
COPY config.yml /etc/docker/registry/config.yml
EXPOSE 8080
CMD ["/bin/registry", "serve", "/etc/docker/registry/config.yml"]