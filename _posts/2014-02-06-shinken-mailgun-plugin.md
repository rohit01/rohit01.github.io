---
layout: post
categories: [shinken, mailgun, programming, python, open-source]
disqus_comments: true
social_buttons: true
date: 2014-02-06 02:40:00 IST
title: Shinken mailgun plugin
redirect_from:
  - /shinken-mailgun-plugin.html
---

[Shinken](http://www.shinken-monitoring.org/) is a modern open-source server monitoring tool written in python. It has a lovely feature rich UI and is highly scalable. The great thing about this project is its active community and frequent releases. [Mailgun](http://www.mailgun.com/) on the other hand, provides an easy to use API for sending, receiving emails. So, no more setting up SMTP servers and maintaing multiple accounts :D  
**Open-source**: This project is fully open sourced and hosted in [Github](https://github.com/rohit01/shinken_mailgun_plugin).

**Prerequisite:**

- A working shinken setup installed in a server.
- Python >= 2.6 is installed on that server

##### Ready to use in 3 simple steps:

**Step 1. Create a Mailgun account:**  

- Sign up: <https://mailgun.com/signup>

**Step 2. Update file: [shinken_mailgun_plugin/util/email_settings.ini](https://github.com/rohit01/shinken_mailgun_plugin/blob/master/util/email_settings.ini)**  

In 'settings' section, update the following variables:

- servername: Enter sandbox name (See image below)
- sender: Desired monitoring email ID
- recipients: Destination email ids separated by comma
- authorization: Mailgun API key (See image below)
- serverurl: Update this with your shinken http url. It helps in generating the exact host/service link in alert mails.

![Mailgun credentials help](/res/posts/shinken-mailgun-plugin/mailgun_credentials.jpg)

**Step 3. Update shinken configuration:**

- **commands.cfg** - */usr/local/shinken/etc/commands.cfg*
    - Update this file with contents from [shinken_mailgun_plugin/commands.cfg](https://github.com/rohit01/shinken_mailgun_plugin/blob/master/commands.cfg)
    - Add python virtualenv location in resource.cfg. For example:
        - $PYTHON_VENV$=/usr/src/python_env
    - Add location details of nrpe plugin files. For example:
        - $PLUGINSDIR$=/usr/local/nagios/libexec
    - Update the <event_command_name> as instructed in comments.
- **templates.cfg** - */usr/local/shinken/etc/templates.cfg*
    - Update notification command details in this file. Set the following as:
        - host_notification_commands           host_email_alerts
        - service_notification_commands        service_email_alerts

Once configurations files are updated, restart shinken-arbiter to apply settings:
![shinken-arbiter restart](/res/posts/shinken-mailgun-plugin/shinken_arbiter_restart.png)

##### Sample service check email alert:

**Service check alert for nginx crash in server: rohit.io. To customize message, edit file: email_settings.ini**

![Sample service check email alert](/res/posts/shinken-mailgun-plugin/sample_email.png)

**And as always, Thanks for reading :)**
