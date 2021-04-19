# docker-mfserv-centos7-runimage


## What is it?

This is a docker image to run MetWork/mfserv plugins.

**WARNING:** if you need a docker image to **build** MetWork/mfserv plugins, don't use this image
but [docker-mfservplugins-centos7-buildimage](https://github.com/metwork-framework/docker-mfservplugins-centos7-buildimage) or [docker-mfservplugins-centos8-buildimage](https://github.com/metwork-framework/docker-mfservplugins-centos8-buildimage).

## How to use it?

```
docker run -it -v 8080:18868 -e MFSERV_PLUGINS_URLS=http://.../yourplugin.plugin bash
```

See Dockerfile for more options.
