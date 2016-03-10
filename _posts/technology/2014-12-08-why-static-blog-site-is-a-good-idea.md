---
layout: post
date: 2014-12-08 20:40:00 IST
title: Why static blog site is a good idea!
categories:
  - technology
tags:
  - blog
  - jekyll
  - disqus
  - simplicity
thumbnail: /res/posts/why-static-blog-site-is-a-good-idea/jekyll.png
---

Starting a blog is fairly easy. There are many free blog hosting providers in the internet. However, each of them has some limitation on the level of customization. So, I decided to host it myself and figure out the best alternative.

First Steps
===========

These were the first steps, I took while starting my blog - [Simplicity](http://{{ site.website }}):

1. **Domain**: Domain is the most important identity of a blog. Free domains are mostly bound to a hosting provider and help them more than the owner. So, I decided to get a personal domain - [rohit.io](http://{{ site.website }}).

2. **Static vs Dynamic**: Personal blogs are mostly static. Only blog posts get added every few days and comments by visitors. So, I decided to go with a static website generator - [Jekyll](http://jekyllrb.com/). For comments, I added the [Disqus](https://disqus.com/) plugin.

3. **Hosting provider**: Github has support for hosting Jekyll websites. Plus, it's highly reliable, zero maintenance and free. Problem solved!

4. **Design**: The inbuilt theme of Jekyll is very basic. I searched few Jekyll websites and decide to reuse this one: <http://rsms.me> / <https://github.com/rsms/rsms.github.com>. Source code was under creative commons license (friendly).

5. **Search**: [Google custom search engine](https://www.google.co.in/cse/) was already configured in the code. I updated the same to point to [Simplicity](http://{{ site.website }}) blog.

6. **Google Analytics**: This was, again, already configured in the code. Updated the same with the ID generated for [Simplicity](http://{{ site.website }}).

Next Steps
==========

I had a decent blog site. However, there were some unsolved problems like SEO, social plugins, link share previews, etc. Since, the website source code was not mine, it was difficult to fix. I did a complete revamp of the website to fix this. Post this, I was able to solve the following problems:

* **SEO**: Learned about SEO stuff and handled most of the meta tags as per standard.
* **Page Speed**: Google [PageSpeed Insight](https://developers.google.com/speed/pagespeed/insights/) tool is a fantastic tool. It helped me to improve the website structure. I also integrated [cloudflare CDN](https://www.cloudflare.com/) to improve latency. The score of [Simplicity](http://{{ site.website }}) in PageSpeed Insight tool is now **96/100** :-D
* **Twitter card**: Added [twitter card](https://dev.twitter.com/cards/overview) support for previews in twitter for links.
* **[The Open Graph protocol](http://ogp.me/)**: Added open graph related tags. This is used by Facebook and Linkedin for generating link previews.
* **Search**: Google CSE depends on Google indexing + the search results were displayed at google website. I wanted to have an in-house search feature. I found this awesome Jekyll plugin: [jekyll lunr js search](https://github.com/slashdotdash/jekyll-lunr-js-search)
* **Google Analytics**: The bounce rate at home page was reduced to almost half. This was a bonus :-)

**Gyaan**: Static websites are great. Page load times are great. Hosting is free, reliable and scalable. 100% customization is possible. Basic dynamic features can be worked out using javascript. However, in the initial stages, it require's a lot of development effort. Changing themes is also a pain.

The source code of [Simplicity](http://{{ site.website }}) is available [here](https://github.com/rohit01/rohit01.github.io). **And as always, Thanks for Reading :-)**
