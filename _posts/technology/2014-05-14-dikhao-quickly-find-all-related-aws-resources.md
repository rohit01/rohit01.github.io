---
layout: post
date: 2014-05-14 13:10:00 IST
title: Dikhao - Quickly find all related AWS resources
redirect_from:
  - /dikhao-quickly-find-all-related-aws-resources.html
categories:
  - technology
tags:
  - dikhao
  - aws
  - ec2
  - route53
  - redis
  - hubot
  - heroku
---

Dikhao is an open source project ([hosted in github](https://github.com/rohit01/dikhao)), to cache every EC2 and route53 resource, find relations between them, and provide really fast lookups. It can be installed as a python command line utility (*pip install dikhao*), deployed in [Heroku](https://heroku.com/) and has a ready to use [hubot](https://hubot.github.com/) plugin.

---

## Example search

* CLI command:  
    `$ batao -i route53.rohit.io`
* [Hubot](https://hubot.github.com/) bot in hipchat:  
    `@hubot batao route53.rohit.io`
* [Heroku](https://heroku.com/) application:  
    `http://<app_name>.herokuapp.com/lookup/route53.rohit.io`

*Note:* Key *'route53.rohit.io'* can be anything from the configurable list of indexed items (written below).

## Output

    Route53 Details (210 secs ago):
| Name               | ttl | Type      | Value                                              |
|--------------------|-----|-----------|----------------------------------------------------|
| route53.rohit.io.  | 300 | CNAME     | ec2-54-162-144-108.us-west-1.compute.amazonaws.com |
| elb1-dns.rohit.io. | 600 | A (Alias) | blog-elb-993346533.us-west-1.elb.amazonaws.com.    |
| elb1-dns.rohit.io. | 600 | A (Alias) | web-elb-1401441163.us-west-1.elb.amazonaws.com.    |

    EC2 Instance Details (265 secs ago):
|           Property | Value                                              |
|--------------------|----------------------------------------------------|
|        Instance ID | i-e68e0cca                                         |
|              State | running                                            |
|            EC2 DNS | ec2-54-162-144-108.us-west-1.compute.amazonaws.com |
|         IP address | 54.162.144.108                                     |
|             Region | us-west-1                                          |
|               Zone | us-west-1b                                         |
|      Instance type | m1.large                                           |
| Private IP address | 10.201.136.202                                     |
|        Private DNS | ip-10-201-136-202.us-west-1.compute.internal       |
|          ELB names | blog-elb,web-elb                                   |

    Elastic IP Details (261 secs ago):
| Elastic IP     | Instance ID |
|----------------|-------------|
| 54.162.144.108 | i-e68e0cca  |

    ELB Details (266 secs ago):
| Name     | ELB DNS                                         | Instance ID | State        |
|----------|-------------------------------------------------|-------------|--------------|
| blog-elb | blog-elb-993346533.us-west-1.elb.amazonaws.com. | i-e68e0cca  | InService    |
|          |                                                 | i-e68kkbba  | InService    |
|          |                                                 | i-52641cad  | OutOfService |
| web-elb  | web-elb-1401441163.us-west-1.elb.amazonaws.com. | i-e68e0cca  | InService    |
|          |                                                 | i-e68kkbba  | InService    |
|          |                                                 | i-52641cad  | OutOfService |


---

## Installation

* **CLI Tool**  
    *dikhao* is available for installation using PyPi. Once installed, it provides two commands: *padho* and *batao*. *padho* syncs all AWS details into redis and *batao* can be used for searching the same.

    (venv)$ pip install dikhao

* **Heroku App**  
    Clone respsitory and use the automated install script *[install.sh](https://github.com/rohit01/dikhao/blob/master/install.sh)*.

    **Manual install instructions:**

    ```
    $ git clone git@github.com:rohit01/dikhao.git
    $ cd dikhao
    $ heroku create {app_name} -s cedar
    $ git push heroku master
    $ heroku addons:add rediscloud --app {app_name}
    $ heroku ps:scale web=1

    #### Add credentials: ####
    $ heroku config:set AWS_ACCESS_KEY_ID='<ACCESS-KEY>'
    $ heroku config:set AWS_SECRET_ACCESS_KEY='<SECRET-KEY>'
    $ heroku config:set REDIS_HOST='<rediscloud-hostname>'
    $ heroku config:set REDIS_PORT_NO='<rediscloud-port>'
    $ heroku config:set REDIS_PASSWORD='<rediscloud-password>'
    $ heroku config:set PORT='80'
    ```

* **Hubot Agent:**
    * Deploy *dikhao* as a Heroku app
    * Add the *Heroku application url* in [coffee script](https://github.com/rohit01/dikhao/blob/master/hubot/dikhao.coffee)
    * Integrate the coffee script in your existing hubot setup

---

## Current features

1. Supported AWS services:
    * EC2 - Instance, Elastic IP and ELB
    * Route53 - All DNS types
2. Search input value can be any one of the indexed item. Dikhao supports indexing based on the following ([configurable](https://github.com/rohit01/dikhao/blob/master/dikhao/sync.py#L16)):
    * Route 53 - DNS record name
    * Route 53 - DNS record value
    * EC2 Instance - ID
    * EC2 Instance - IP address
    * EC2 Instance - Private IP address
    * EC2 Instance - Public DNS
    * EC2 Instance - Private DNS
    * EC2 ELB - Name
    * EC2 ELB - DNS
    * EC2 - Elastic IP
3. Provides many syncing options to help cater different needs. Few notable configurable options:
    * NO_EC2 - If True, EC2 details will not be synced. Default: False
    * NO_ROUTE53 - If True, Route53 details will not be synced. Default: False
    * HOSTED_ZONES - List of comma separated hosted zone names to be synced. Default: all
    * REGIONS - List of comma separated EC2 region names to be synced. Default: all
    * EXPIRE_DURATION - Duration for which details are cached. Default: 86,400 seconds (1 Day)

**And as always, Thanks for reading :-)**
