---
layout: post
date: 2014-12-18 18:00:00 IST
title: RIP Nagios. Hello Docker Shinken!
categories:
  - technology
tags:
  - nagios
  - shinken
  - docker
thumbnail: /res/posts/rip-nagios-hello-docker-shinken/NinjaGreen.png
redirect_from:
  - /blog/use-shinken-let-nagios-rip.html
---

Nagios is a great IT infrastructure monitoring tool. Some people still consider it as an IT standard for monitoring. But as with any software, there is always competition. I personally find Shinken to be one of the most compatible, modern and dare I say, a better alternative to Nagios. In this post, I will do a quick comparison between the two tools, show you reasons to migrate and more importantly how to migrate your current Nagios setup to Shinken in less than 10 minutes! No, seriously!

**Quick Introduction to Shinken**: Shinken was written by [Jean Gabès](https://twitter.com/naparuba) as a proof of concept for a new Nagios architecture. He proposed it as the new development branch of Nagios 4. When this proposal was turned down by Nagios authors, Shinken became an independent network monitoring software application compatible with Nagios. Shinken is basically a Nagios Core replacement written in python.

Shinken vs Nagios:
==================

At [Knowlarity](http://www.knowlarity.com/), we did the big switch from Nagios to Shinken for our complete infrastructure in just about a week. Having used both Nagios and Shinken now, I can tell you how Shinken has helped solve some of the fundamental problems which we faced using Nagios. 

* **Reliability**: I was working on a NRPE notification plugin and deployed it in Nagios. I turned down a service to test it, but to my surprise Nagios was showing the status as OK (green). The last executed time got updated in the UI but nothing happened under the hood. It was a random issue and I suspect it could have been because of a old version of Nagios 3.x. I have been using Shinken for a while now (even before the migration in Knowlarity), and I have never once faced these sort of issues. The UI always displays the truth.

* **Active Development**: I updated Nagios to the latest 4.x. The first impression was that nothing had changed except for the colors in the user interface. In contrast, the complete architecture of Shinken 2.0 has been revamped. It has a modular design, and easy installation, and configuration features. Kudos to the Shinken community.

* **Multi DC deployment**: At Knowlarity, we have data-centers in multiple cities across multiple countries. It is a known fact that multi-DC deployment using Nagios is first of all difficult, and looks like a hack when deployed. In comparison, Shinken’s distributed architecture is amazingly simple. All of Shinken’s configuration is still managed in a single place. Here you just add a new shinken-poller in all your data centers and voila, you’re done.

* **Performance**: Nagios is written in C and is a lot faster than Shinken. However, Shinken has some exciting performance improvement modules like [booster-nrpe](https://github.com/shinken-monitoring/mod-booster-nrpe).

* **Modern**: As opposed to Nagios tired old features, Shinken has support for dynamic configuration, AWS hosts, a module installer and many more rich support features. The Shinken community is very active and responsive.

* **User Interface**: The Nagios UI, albeit old, is very feature rich. Shinken has a sleek and modern interface - WebUI. WebUI is really easy to use but lack features. However, there are many third party interfaces available. I like to use WebUI and [Thruk](http://www.thruk.org/) at the same time. Thruk interface is similar to that of Nagios. So hardcore Nagios users will still feel at home.

* **Easy Switch**: Probably the best thing about shinken is that it is like a plug and play replacement of Nagios core. Almost 100% compatible. Just dump your Nagios configuration in Shinken and it works. Take a look at their documentation for more details: [Feature comparison between Shinken and Nagios](http://shinken.readthedocs.org/en/latest/01_about/whatsnew.html)


Switch to Shinken in 3 easy steps:
=================================

1. Install [docker](https://docs.docker.com/installation/#installation). Select and pull one of the following docker image:

    * **Shinken**: It has basic shinken installation along with few must have modules like WebUI (Web Interface), standard nrpe plugins plus a few extra ones, nrpe-booster support and a lightweight web server (nginx). Link: <https://registry.hub.docker.com/u/rohit01/shinken/>
    * **Shinken Thruk**: Shinken (as written above) + Thruk web interface. Internal web server nginx is replaced with apache2. Link: <https://registry.hub.docker.com/u/rohit01/shinken_thruk/>
    * **Shinken Thruk Graphite**: Shinken Thruk (as written above) + graph support in WebUI. Graphs are stored and served using graphite. Retention is configured for 1 month on a per 2 minute basis. Link: <https://registry.hub.docker.com/u/rohit01/shinken_thruk_graphite/>

    Sample execution: `$ sudo docker pull rohit01/shinken`

2. Clone project **[docker_shinken](https://github.com/rohit01/docker_shinken)**. You will see three directories corresponding to the docker images mentioned above. Go inside the directory corresponding to your selected image. You will see a directory named: [custom_configs/](https://github.com/rohit01/docker_shinken/tree/master/shinken_basic/custom_configs). Dump your Nagios configuration here. A default configuration for monitoring docker host is already defined. User login details can be updated in file: [htpasswd.users](https://github.com/rohit01/docker_shinken/blob/master/shinken_basic/custom_configs/htpasswd.users). File contains the documentation in comments.

3. Run the docker image. Expose TCP port 80 to the base machine and mount custom_configs directory to /etc/shinken/custom_configs. Sample execution:

    ```
    $ git clone https://github.com/rohit01/docker_shinken.git
    $ cd docker_shinken/shinken_basic
    $ sudo docker run -d -v "$(pwd)/custom_configs:/etc/shinken/custom_configs" -p 80:80 rohit01/shinken
    ```

Open your browser and visit these urls (Default credential - admin/admin):

1. **WebUI**: <http://localhost/>. Available on all three images.
2. **Thruk UI**: <http://localhost/thruk/>. Available on shinken_thruk and shinken_thruk_graphite images.
3. **Graphs**: <http://localhost/service/docker_shinken/http_port_7770#graphs>. Available only on shinken_thruk_graphite image.

### Please Note:

* Configuration changes are required only in one place/directory: custom_configs
* The nrpe plugins installation directory is /usr/lib/nagios/plugins.
* If you are using custom NRPE plugins, mount your plugins directory inside docker container at /usr/local/custom_plugins. Modify the resource path accordingly.

If you have any question, I will be happy to answer them in comments. **And as always, Thanks for reading :)**
