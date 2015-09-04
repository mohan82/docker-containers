#Docker Machine with Proxy
docker-machine create -d virtualbox \
        --engine-env HTTP_PROXY=http://localhost:8000 \
        --engine-env HTTPS_PROXY=https://localhost:8080 \
        --engine-env NO_PROXY= localhost,127.0.0.1,192.*.*.*,182.*.*.*,172.*.*.*,10.51.33.79,192.168.99.102\
        proxybox
