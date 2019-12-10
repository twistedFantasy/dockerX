# Installation

## Debian-based Linux distributions

1/ Download and import Oracle public key

```
$ wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
$ wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
```

2/ Add Oracle VirtualBox PPA. According to your distribution, replace '<mydist>'
 with 'artful', 'zesty', 'yakkety', 'xenial', 'trusty', 'stretch', 'jessie', or 'wheezy'
  (older versions of VirtualBox supported different distributions).<br/>
  
[Ubuntu](https://wiki.ubuntu.com/Releases):
* 19.04: disco
* 18.04: bionic
* 16.04: xenial
```
$ sudo add-apt-repository "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian <mydist> contrib"
```

3/ Update packages list information & install VirtualBox

```
$ sudo apt update
$ sudo apt install virtualbox-6.0
```

Useful resources: <br/>
https://www.virtualbox.org/wiki/Linux_Downloads
