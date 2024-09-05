# 使用 Fluentd 官方的镜像作为基础镜像
FROM fluentd:latest
USER root
RUN mkdir -p /app/logs/

# 安装 fluent-plugin-bigquery 插件
RUN gem install fluent-plugin-bigquery

# 复制 Fluentd 配置文件到镜像中
COPY fluent_file.conf /fluentd/etc/fluent.conf

# 定义 CMD 指令用于启动 Fluentd 并指定配置文件
CMD ["fluentd", "-c", "/fluentd/etc/fluent.conf"]