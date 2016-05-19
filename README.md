# Example image for testing official CentOS 7 systemd container

## Build it
```
docker build --rm --no-cache -t httpd .
```

## Run it in Background
```
docker kill httpd && docker rm httpd && docker run --privileged --name httpd -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -d  httpd
```
## Run it in Foreground
```
docker kill httpd && docker rm httpd && docker run --privileged --name httpd -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 -ti httpd
```
