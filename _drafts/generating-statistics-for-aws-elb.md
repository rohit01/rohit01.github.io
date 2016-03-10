---
layout: post
date: 2014-12-11 12:49:00 IST
title: Generating statistics for AWS ELB
categories:
  - technology
tags:
  - awstats
  - aws
  - elb
thumbnail: /res/posts/generating-statistics-for-aws-elb/awstats_thumbnail.png
---

AWS provides cloudwatch metrics for many services including elastic load balancer (ELB). But, it is very basic and limited in terms of details and retention. To get deeper insights, the ELBs can be configured to save access logs into S3. These logs can then be downloaded and reports can be generated. AWStats is one such amazing tool for generating reports. In this article, I will show you a demo, how to configure an ELB and how to deploy an AWStats server in less than 10 minutes.

AWStatus Demo: <http://www.nltechno.com/awstats/awstats.pl?config=destailleur.fr>
