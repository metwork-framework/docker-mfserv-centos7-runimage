# docker-mfserv-centos7-runimage


## What is it?

This is a docker image to run MetWork/mfserv plugins.

**WARNING:** if you need a docker image to **build** MetWork/mfserv plugins, don't use this image
but [docker-mfservplugins-centos7-buildimage](https://github.com/metwork-framework/docker-mfservplugins-centos7-buildimage) or [docker-mfservplugins-centos8-buildimage](https://github.com/metwork-framework/docker-mfservplugins-centos8-buildimage).

## How to use it?

To debug:

```
docker run -it -p 8080:18868 -e MFSERV_PLUGINS_URLS=http://.../yourplugin.plugin metwork/mfserv-centos7-runimage:latest cat
```

*CONTROL + C to exit*

To run as a daemon:

```
docker run -d -p 8080:18868 -e MFSERV_PLUGINS_URLS=http://.../yourplugin.plugin metwork/mfserv-centos7-runimage:latest
```


See Dockerfile for more options.
