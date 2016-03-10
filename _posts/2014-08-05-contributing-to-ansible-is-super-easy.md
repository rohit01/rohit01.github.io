---
layout: post
categories: [ansible, open-source, contributing, contribute, github, plivo]
disqus_comments: true
include_embed_gist: true
social_buttons: true
date: 2014-08-05 13:23:00 IST
title: Contributing to Ansible is Super Easy
redirect_from:
  - /contributing-to-ansible-is-super-easy.html
---

Just three days back, I thought about writing a SMS notification module and bingo, I was able to send a [pull request](https://github.com/ansible/ansible/pull/8408), same day. I submitted a module named 'plivo' which allows sending SMS notification using [Plivo](https://www.plivo.com) services. The playbook examples are hosted here: [https://github.com/rohit01/ansible-plivo-example](https://github.com/rohit01/ansible-plivo-example).

Writing an [Ansible](http://ansible.com) module, is pretty much a straight forward approach. Though ansible modules can be written in any language, I will stick to Python in this post. In Python, a module is generally a single file with 3 different parts:

1. **Documentation**: This usually takes up the most number of lines
2. **Logic**: The real programming logic to perform the task
3. **Ansible framework**: Ansible provides some really useful classes and functions to help you in this process

#### Documentation

Ansible is designed to read two global variables and generate documentation. These are:

* **DOCUMENTATION**: A multiline string literal and a valid YAML document. It contains the detailed description of module we see using the command `ansible-doc <module_name>` or at [docs.ansible.com](http://docs.ansible.com).

* **EXAMPLES**: A multiline string literal and a valid YAML document. It demonstrates the sample usage of module.

#### Logic

Logic is the programatic way to perform the task. It uses various resources provided by Ansible. These resources may include the arguments passed to module, ssh connection to host, cloud resources such as AWS, GAE, and many more. Ansible will connect to the host only if logic requires the same. For example, a notification module does not connect to the host for sending SMS, email, etc.

#### Ansible Framework

Ansible modules usually import a bunch of utilities to perform its task. The basic utilities are generally imported by all modules using the following import statement:

```python
    from ansible.module_utils.basic import *
```

---

#### Lets write a simple module

**Module to return a configurable string and control success status:**

<code data-gist-id="7ce30e3d3f12a4901fe2" data-gist-hide-footer="true"></code>

**And the examples to use this module is also simple:**

```YAML
    - echo: name="Hello World!"

    - echo: name="Success is Yes" success=yes

    - echo: name="Success is No" success=no
```

##### Write your own module

Now that you know some basics, why not write something on your own. For more details on developing modules, I highly recommend the following:

* Check some real module related to the one you are writing. Ansible modules are hosted [here](https://github.com/ansible/ansible/tree/devel/library)
* Visit the [Ansible documentation on developing modules](http://docs.ansible.com/developing_modules.html)
* Find Ansible utilities you may like to re-use. You can find them [here](https://github.com/ansible/ansible/tree/devel/lib/ansible/module_utils)


Share what you want to write and feedback in comments. **And as always, Thanks for reading :-)**
