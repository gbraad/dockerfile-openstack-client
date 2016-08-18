OpenStack client
================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Docker container image with the OpenStack client and 'stack' helper tool.


Registries
----------

### Gitlab

Automated builds are available at [GitLab](https://gitlab.com/gbraad/openstack-client)

  * Alpine:  
    `docker pull registry.gitlab.com/gbraad/openstack-client:alpine`
  * CentOS:  
    `docker pull registry.gitlab.com/gbraad/openstack-client:centos`
  * Fedora:  
    `docker pull registry.gitlab.com/gbraad/openstack-client:fedora`
  * Ubuntu:  
    `docker pull registry.gitlab.com/gbraad/openstack-client:ubuntu`


### Docker hub

Alternative [automated build](https://hub.docker.com/r/gbraad/openstack-client/)
are available from the Docker registry.

  * Alpine:  
    `docker pull gbraad/openstack-client:alpine`
  * CentOS:  
    `docker pull gbraad/openstack-client:centos`
  * Fedora:  
    `docker pull gbraad/openstack-client:fedora`
  * Ubuntu:  
    `docker pull gbraad/openstack-client:ubuntu`


Download
--------

If for some reason you can not access the above registries, you can also download
and import the images from [BinTray](https://bintray.com/gbraad/generic/docker-openstack-client)

```
docker load -i gbraad-docker-openstack-client-alpine.tar.xz
```


Usage
-----

### Cloud configurations
Store your `stackrc` files in a local folder called `.stack`

```
$ ls -al ~/.stack
total 20
drwxr-xr-x  2 ubuntu ubuntu 4096 Jun  2 06:37 .
drwxr-xr-x 31 ubuntu ubuntu 4096 Jun 28 02:52 ..
-rw-r--r--  1 ubuntu ubuntu 1581 May 28 16:07 dreamhost
-rw-r--r--  1 ubuntu ubuntu 1646 Jun  2 06:37 trystack
```

Or place your `clouds.yaml` in `~/.config/openstack` More information about
`clouds.yaml` can be found [here](http://docs.openstack.org/developer/python-openstackclient/configuration.html)

```
$ cat ~/.config/openstack/clouds.yaml
```

    clouds:
      dreamhost:
        auth:
          auth_url: https://iad2.dream.io:5000/v2.0
          project_name: dhc123456
          username: c4pash3n1
          password: 0p3nSt4ck
        region_name: RegionOne
      trystack:
        auth:
          auth_url: http://8.43.86.2:5000/v2.0
          project_name: facebook89115xxxx
          username: facebook89115xxxx
          password: xxxxxxxxxxxxxxxxx
        region_name: RegionOne


### Setup an alias

Setup a local alias makes running the container a lot easier


#### Container based on _Alpine_

```
$ alias stack='docker run -it --rm -v $PWD:/workspace -v ~/.stack:/root/.stack registry.gitlab.com/gbraad/openstack-client:alpine stack'
$ alias openstack='docker run -it --rm -v $PWD:/workspace -v ~/.config/openstack:/root/.config/openstack registry.gitlab.com/gbraad/openstack-client:alpine openstack'
```


#### Container based on _CentOS_

```
$ alias stack='docker run -it --rm -v $PWD:/workspace -v ~/.stack:/root/.stack registry.gitlab.com/gbraad/openstack-client:centos stack'
$ alias openstack='docker run -it --rm -v $PWD:/workspace -v ~/.config/openstack:/root/.config/openstack registry.gitlab.com/gbraad/openstack-client:centos openstack'
```


#### Container based on _Fedora_

```
$ alias stack='docker run -it --rm -v $PWD:/workspace -v ~/.stack:/root/.stack registry.gitlab.com/gbraad/openstack-client:fedora stack'
$ alias openstack='docker run -it --rm -v $PWD:/workspace -v ~/.config/openstack:/root/.config/openstack registry.gitlab.com/gbraad/openstack-client:fedora openstack'
```


#### Container based on _Ubuntu_

```
$ alias stack='docker run -it --rm -v $PWD:/workspace -v ~/.stack:/root/.stack registry.gitlab.com/gbraad/openstack-client:ubuntu stack'
$ alias openstack='docker run -it --rm -v $PWD:/workspace -v ~/.config/openstack:/root/.config/openstack registry.gitlab.com/gbraad/openstack-client:ubuntu openstack'
```


### Issue command

Perform a `nova list` or `openstack server list` for Trystack

```
$ stack trystack nova list
$ stack trystack openstack server list
```

Or using `clouds.yaml`:
```
$ openstack --os-cloud trystack server list
```


Thanks
------

  * Lars Kellogg-Stedman, for releasing [OpenStack Tools](https://github.com/larsks/openstack-tools)
  * [GitLab](https://gitlab.com/) for providing a great infrastructure


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad) |
