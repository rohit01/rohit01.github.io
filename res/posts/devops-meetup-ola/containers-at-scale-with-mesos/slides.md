title: Containers at scale with Mesos
output: index.html
controls: false
style: style.css

---
# Containers at Scale

---
<div class="author">
  <h1 class="name">Rohit Gupta</h1>
  <h3 class="twitter">
    <b><a href="http://twitter.com/@rohit01">@rohit01</a></b>
  </h3>
  <h3 class="twitter">
    <b>Production Engineer II, Ola</b>
  </h3>
  <h3 class="url">
    <b><a href="https://www.rohit.io">www.rohit.io</a></b>
  </h3>
</div>

---
# Golden Temple Kitchen

---
# Mumbai Dabbawala

---
## Install DC/OS

* Local setup: <https://dcos.io/docs/1.7/administration/installing/local/>

*Minimal setup steps (from above docs):*
```
$ git clone https://github.com/dcos/dcos-vagrant.git
$ cd dcos-vagrant/
$ curl -O https://downloads.dcos.io/dcos/EarlyAccess/dcos_generate_config.sh
$ vagrant plugin install vagrant-hostmanager
$ export DCOS_CONFIG_PATH=etc/config-1.7.yaml
$ cp VagrantConfig.yaml.example VagrantConfig.yaml
$ vagrant up m1 a1 p1 boot
```

**Ready to use: <http://m1.dcos/>**

---
## Architecture - Mesos Marathon Cluster

---
## Architecture - Marathon-lb Cluster

---
# Questions?

---
# Thank You :)
