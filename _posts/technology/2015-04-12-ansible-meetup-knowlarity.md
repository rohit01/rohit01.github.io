---
layout: post
date: 2015-04-12 22:10:00 IST
title: Ansible Meetup @ Knowlarity
include_twitter_js: true
categories:
  - technology
tags:
  - ansible
  - meetup
  - knowlarity
  - #AnsibleAtKnowlarity
thumbnail: /res/posts/ansible-meetup-knowlarity/thumbnail.jpg
---

Yesterday, we hosted an Ansible Meetup at at [Knowlarity](http://www.knowlarity.com/) Bangalore office. It was a wonderful gathering, interactive sessions which included cute as well as dangerous questions :p  
Here are some exciting pics from the event:

<div style='position: relative; padding-bottom: 81%; height: 0; overflow: hidden;'><iframe id='iframe' src='http://flickrit.com/slideshowholder.php?height=80&size=big&speed=3.0&count=100&setId=72157651504518608&click=true&counter=true&theme=1&thumbnails=1&transition=2&layoutType=responsive&sort=0' scrolling='no' frameborder='0'style='width:100%; height:100%; position: absolute; top:0; left:0;' ></iframe></div>

Tech Talks on Ansible
=====================

We had 5 sessions which covered Introduction to Ansible, advanced topics as well as contributing to Ansible.

### Getting started with Ansible-playbook
---

<img src="/res/posts/ansible-meetup-knowlarity/images/ravdeep.jpg" width="50%" height="50%" align="right">

**Speaker**: [@ravdeep003](https://twitter.com/ravdeep003)  
**Slides**: [click here](/res/posts/ansible-meetup-knowlarity/getting-started-with-ansible-playbook/slides.pdf)  
**Summary**: In this talk, Ravdeep gave an introduction to Ansible playbooks, inventory, modules, variables and a typical directory structure of an Ansible project. The session was very interactive with many participants completely new to Ansible. The demo session, especially got people excited.

### Web App, Automated deployment
---

<img src="/res/posts/ansible-meetup-knowlarity/images/adik.jpg" width="50%" height="50%" align="right">

**Speaker**: [@adityak2190](https://twitter.com/adityak2190)  
**Slides**: [click here](http://www.adikrishnan.in/static/preso/ansible-sitedeploy.html)  
**Summary**: In this talk, Aditya showed a complete end to end automation of an application using Ansible. The application was a Django website. The application was deployed with nginx, wsgi (running under gunicorn) and SQLite database. The application was deployed from scratch in less than 5 mins. The source code of the demo application is in his [github repository](https://github.com/adityak2190/sitedeploy).

### Running Ansible via API
---

<img src="/res/posts/ansible-meetup-knowlarity/images/hussain.jpg" width="50%" height="50%" align="right">

**Speaker**: [@ImNagri](https://twitter.com/ImNagri)  
**Slides**: [click here](/res/posts/ansible-meetup-knowlarity/running-ansible-via-api/slides.pdf)  
**Summary**: In this talk, Hussain demonstrated how to use Ansible as a python library and expose custom APIs. His project used python flask to expose web APIs which was called from a remote server. The remote server had a beautiful WebUI built using bootstrap and javascript. The architecture was discussed in detail.

### AWS Management with Ansible
---

<img src="/res/posts/ansible-meetup-knowlarity/images/rohit.jpg" width="50%" height="50%" align="right">

**Speaker**: [@rohit01](https://twitter.com/rohit01)  
**Slides**: [click here](/res/posts/ansible-meetup-knowlarity/aws-management-with-ansible)  
**Summary**:  In this talk, I did a demo of Ansible cloud modules - AWS EC2 and Route53. The talk started with a quick introduction to AWS followed by a live demo. In the demo, I uploaded my public ssh key into AWS EC2, created a security group, launched two WordPress instances, created an ELB, register the newly created instances behind ELB and added an entry in Route53 nameserver. It demonstrated the power of Ansible to manage public clouds and define infrastructure in the form of simple YAML files.

### Contributing to Ansible
---

<img src="/res/posts/ansible-meetup-knowlarity/images/deepak.jpg" width="50%" height="50%" align="right">

**Speaker**: [@hellodiku](https://twitter.com/hellodiku)  
**Slides**: [click here](/res/posts/ansible-meetup-knowlarity/contributing-to-ansible/slides.pdf)  
**Summary**: In this talk, Deepak talked about writing custom Ansible modules. The talk started with a quick introduction to key concepts and then focused more on code structure. The demo highlighted the coding structure of Ansible project, while keeping it simple. His demo module is hosted in his [github repository](https://github.com/hellodk/ansible-meetup-bangalore)

### Say Cheers!
<img src="/res/posts/ansible-meetup-knowlarity/images/group_pic.jpg" width="100%" height="100%" align="center">

### Tweets on this event :-D
<div class="tweetline" align="center">
    <a class="twitter-timeline"  href="https://twitter.com/hashtag/AnsibleAtKnowlarity" data-widget-id="587290017782870016">#AnsibleAtKnowlarity Tweets</a>
</div>

**And as always, Thanks for reading :)**
