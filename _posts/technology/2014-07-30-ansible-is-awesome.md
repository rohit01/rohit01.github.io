---
layout: post
date: 2014-07-30 10:30:00 IST
title: Ansible is Awesome
redirect_from:
  - /ansible-is-awesome.html
categories:
  - technology
tags:
  - ansible
  - ansible playbook
  - configuration management
  - github
thumbnail: /res/posts/ansible-is-awesome/ansible-logo.png
---

Since a couple of weeks, I have started using Ansible and am amazed with its awesomeness. In this short duration, I automated a bunch of items, read about best practices and found a lot of batteries/community projects.

## So, what really makes Ansible awesome?

1. **Features:**

    * *Agentless*: Unlike Puppet, Chef or Saltstack, there is no need to run an agent on the clients
    * *Secure*: Uses native SSH for all communications between master and client
    * *Scalable*: 'ansible-pull' is an advanced feature which has potential for very large deployments
    * *Ansible Facts*: Systems data, such as IP address, OS, Disk space, etc. are available by default in the form of variables. It makes custom configuration and cloud deployments super easy
    * *Ansible Playbooks*: Playbooks are like ansible code, usually writen for orchestration. These are YML files - Powerful and easy to understand
    * *Role*: Ansible framework for writing playbooks in an organized structure

2. **Super Easy to get started:**

    * Installation:

        * Using PyPI: `(env)`$ `pip install ansible`
        * Pakage Manager: $ `apt-get install ansible`

    * Hello world with ansible in just two steps:

        * $ `echo "127.0.0.1" > ansible_hosts`
        * $ `ansible all -i ansible_hosts -m ping`

3. **Batteries Included** - [Ansible modules](http://docs.ansible.com/list_of_all_modules.html)

4. **[Open-source project](https://github.com/ansible/ansible) and under active development**

5. **Change management:**

    * Ansible is intellegent in making changes only if it is necessary. This means, when you ask ansible to install a software, it will install it only if it is not installed. It also provides a special `register` method to trap the result in a variable. This variable can later be used in conditional statements to act differently.

## My playbooks written as per guidelines on best practices

Github repository: <https://github.com/rohit01/ansible-playbooks>. This project provides a basic layout for building configuration management system using Ansible.

Would love to hear your feedback in comments. **And as always, Thanks for reading :-)**
