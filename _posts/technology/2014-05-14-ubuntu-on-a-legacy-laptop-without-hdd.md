---
layout: post
date: 2014-05-14 00:45:00 IST
title: Ubuntu on a legacy laptop without HDD
redirect_from:
  - /ubuntu-on-a-legacy-laptop-without-hdd.html
categories:
  - technology
tags:
  - pendrive
  - usb
  - ubuntu
  - legacy
  - chromium
  - lxde
  - unity
---

I have a 6 year old legacy laptop with **impaired battery, DVD drive and hard drive**. It lay unused for over a year, but recently, I decided to use it like a full fledge Linux laptop. Here's the screenshot of my laptop running the latest version of *Firefox in Ubuntu 12.04*:

![Ubuntu 12.04 Legacy Laptop](/res/posts/ubuntu-on-a-legacy-laptop-without-hdd/ubuntu_12.04.jpg)

## Available options

Since the hard drive and dvd drive is absent, available options include booting through USB or Network (PXE boot). USB is the easy and portable approach among the two. An external USB hard drive works well, just like the internal HDD. However, my legacy laptop was not able to detect my external HDD during boot.  
There are many live USB Linux options available online, but they have their own limitations. Live Linux works well with default configuration, but it gets really messy when personalized settings are saved. Here are some of the problems:

* **Slow:** Personalized settings make boot really slow over time.
* **Unstable:** The system may become unstable even with minor changes.
* **Space utilization:** Since personal settings are saved as new files, removing pre-installed packages also need space.
* **Recovery:** Recovering data, in case of system errors, may be difficult.

## Full Linux installation on pen drives

Unlike windows, Linux can be easily installed on any USB drive. However, a full Linux installation on a pendrive may be sluggish due to slow write speed. The performance is even worse in case of an OS because it needs to deal with large no. of small files.

I installed Ubuntu 12.04 on a 4 GB pendrive and was able to get good performance with few optimizations. Here are the list of optimizations that worked for me:

1. **Device Selection:** A pendrive with a **higher speed rating** can make or break the user experience. Speed rating is generally better on devices with less space. I had a regular 32GB and a 4GB pen drive. First, I installed Ubuntu in 32GB. It two hours to install and 10 minutes to boot. The system was too slow and froze often. On the 4GB pen drive, it took one hour to install, but **boot time was just 1 minute**. The system was still slow, but usable.

2. **No Swap Partition:** Writes on a *swap* partition on the same device may further reduce the read/write speed available for regular operations. If you really need to use *swap* in case of *less available RAM*, mount it on a different device.

3. **Desktop Environment:** A lightweight desktop environment performs much better. I uninstalled the default Unity desktop environment and replaced it with **LXDE**.

4. **Web Browser:** I tried different browsers and found that **google chrome and chromium works best**. Firefox and most lightweight browsers, viz.: midori, are slow and freeze often.

## Easy instructions for Ubuntu 12.04

* Install Ubuntu on the pendrive just like a regular ubuntu installation.
* Download and execute the following shell script:

<script src="http://gist-it.appspot.com/github/rohit01/unity-to-lxde/blob/master/ubuntu_lxde.sh"></script>

Let me know your experience in comments. **And as always, Thanks for reading :-)**
