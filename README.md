OpenStack client
================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Docker container image with the OpenStack client and 'stack' helper tool by @larsks


Available as an [automated build](https://hub.docker.com/r/gbraad/openstack-client/) from the Docker registry.

  * Ubuntu: `docker pull gbraad/openstack-client:ubuntu`
  * CentOS: `docker pull gbraad/openstack-client:centos`


Usage
-----

### Store `stackrc`
Store your `stackrc` files in a local folder called `.stack`

```
$ ls -al ~/.stack
total 20
drwxr-xr-x  2 ubuntu ubuntu 4096 Jun  2 06:37 .
drwxr-xr-x 31 ubuntu ubuntu 4096 Jun 28 02:52 ..
-rw-r--r--  1 ubuntu ubuntu 1581 May 28 16:07 dreamhost
-rw-r--r--  1 ubuntu ubuntu 1646 Jun  2 06:37 trystack
```

### Setup an alias

Setup a local alias makes running the container a lot easier


#### Container based on _Ubuntu_

```
$ alias stack='docker run -it --rm -v ~/.stack:/root/.stack gbraad/openstack-client:ubuntu stack'
```


#### Container based on _CentOS_
```
$ alias stack='docker run -it --rm -v ~/.stack:/root/.stack gbraad/openstack-client:centos stack'
```


### Issue command

Perform a `nova list` or `openstack server list` for Trystack

```
$ stack trystack nova list
$ stack trystack openstack server list
```


Thanks
------

  * Lars Kellogg-Stedman, for releasing [OpenStack Tools](https://github.com/larsks/openstack-tools)


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad) |
