---
layout: post
categories: [python, virtual environment, virtualenv, venv]
disqus_comments: true
social_buttons: true
date: 2014-04-12 00:25:00 IST
title: Setting up python vitual environment
redirect_from:
  - /setting-up-python-virtual-environment.html
---

Using python virtual environment for development is highly recommended and is widely used by python programmers. Debian/Ubuntu commands to install python virtualenv are as follows:

* Install required packages:

```bash
    $ sudo apt-get install python-pip
    $ sudo pip install virtualenv
````

Create a virtualenv:

```bash
    $ virtualenv [--no-site-packages] venv
````

Activate virtualenv:

```bash
    $ source venv/bin/activate
````

Once the virtualenv is activated, use pip to install libraries. For example:

```bash
    (venv)$ pip install gevent redis ipython
````

The above example will install python packages: gevent, redis and ipython. To deactivate virtualenv:

```bash
    (venv)$ deactivate
````

Virtualenv can help you maintain conflicting library dependencies, python versions for different projects, in the same system. It is commonly used in production systems even with a single python application.

**And as always, Thanks for reading :)**
