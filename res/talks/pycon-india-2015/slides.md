title: RIP Nagios. Hello Docker Shinken!
output: index.html
controls: false
style: style.css

---
# RIP Nagios. Hello Docker Shinken!

---
<!-- Who am I -->
<h1>[@rohit01](https://twitter.com/rohit01) <br> [www.rohit.io](http://www.rohit.io/)</h1>

---
<!-- Conversation -->
<!-- Q. How many of you have never used any system monitoring tool? -->
<!-- Awesome -->
<!-- Q. How many of you have heard about Nagios -->
<!-- Great.. I have some bad and some good news for you -->

---
<!-- Steep learning curve -->

---
# Nagios

---
# Shinken

---
<!-- Shinken Architecture -->

---
<!-- Docker Shinken -->

---
### How to Run?

```
1 $ git clone https://github.com/rohit01/docker_shinken.git

2 $ cd docker_shinken/shinken_thruk_graphite

3 $ sudo docker run -d \
      -v "$(pwd)/custom_configs:/etc/shinken/custom_configs" \
      -p 80:80 \
      rohit01/shinken_thruk_graphite

# Note: custom_configs/ contains your custom configuration
        files for shinken.
```

---
### Show me the Demo!

* **[shinken.rohit.io](http://shinken.rohit.io)**
* **admin / admin**

---
<!-- Introduction to NRPE and agentless checks -->
# NRPE - Agent

---
# What do I Monitor?

---
### Installation

```

sudo apt-get install nagios-nrpe-server
 
```

**Check:** /etc/nagios/nrpe.cfg

```

include=/etc/nagios/nrpe_local.cfg
 
```

---
### nrpe_local.cfg

```
allowed_hosts=127.0.0.1,172.16.0.0/12  # Comma separated IP / CIDR
dont_blame_nrpe=1                      # Enable arguments

# NRPE Commands

command[resolve_google_dns]=/usr/lib/nagios/plugins/check_dns -H www.google.com
command[load_per_cpu]=/usr/lib/nagios/plugins/check_load -r -w '$ARG1$' -c '$ARG2$'

```

---
# Shinken Configuration

---
### Commands Definition

```
# Variable declaration
$M_PLUGINS$=/usr/local/libexec/

define command {
    command_name    check_nrpe
    command_line    $M_PLUGINS$/check_nrpe -H '$HOSTADDRESS$' -c $ARG1$
}

define command {
    command_name    check_nrpe_args
    command_line    $M_PLUGINS$/check_nrpe -H '$HOSTADDRESS$' -c $ARG1$ \
                        -a $ARG2$ $ARG3$ $ARG4$ $ARG5$
}
```

---
### Host Definition

```
define host {
    host_name                  shinken
    use                        generic-host
    address                    shinken.rohit.io
}
```

---
### Service Definition

```
# Without NRPE argument
define service {
    service_description    Check DNS
    use                    generic-service
    host_name              shinken
    check_command          check_nrpe ! resolve_google_dns
}

# With NRPE arguments
define service {
    service_description    Load Per CPU
    use                    generic-service
    host_name              shinken
    check_command          check_nrpe_args ! load_per_cpu ! 4,2,1 ! 8,6,4
}

```

---
# Questions?

---
# Thank You :)
