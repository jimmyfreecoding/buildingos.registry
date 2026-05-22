# 使用官方镜像作为基础
FROM registry:2

# 将你的配置文件拷贝进去
COPY config.yml /etc/docker/registry/config.yml

# 确保容器暴露 5000 端口
EXPOSE 5000

# 启动命令
ENTRYPOINT ["/entrypoint.sh", "/etc/docker/registry/config.yml"]