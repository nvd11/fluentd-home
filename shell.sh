git pull && docker build --build-arg http_proxy=http://10.0.1.223:7890 --build-arg https_proxy=http://10.0.1.223:7890 -t gateman/fluentd:1.0.0 .

docker run -e http_proxy=http://10.0.1.223:7890 -e https_proxy=http://10.0.1.223:7890-v /app/logs:/app/logs gateman/fluentd:1.0.0