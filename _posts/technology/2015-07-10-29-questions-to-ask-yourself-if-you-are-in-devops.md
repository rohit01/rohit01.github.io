---
layout: post
date: 2015-07-10 20:10:00 IST
title: 29 questions to ask yourself if you’re in devops
description: The role of devops is to minimize the risk of every change. Read, how to do that.
categories:
  - technology
tags:
  - devops
  - devops checkup
  - saltstack
thumbnail: /res/posts/29-questions-to-ask-yourself-if-you-are-in-devops/thumbnail.jpg
---

A few days ago, I had an opportunity to meet and interact with [Mike Place](https://github.com/cachedout), who works as a developer at [Saltstack](http://saltstack.com/). We had an interesting conversation about devops and how things work in the valley. Mike explained the growing importance of devops in organizations and the rise of devops as a culture that aims to collaboratively deliver systems into production, reliably and effectively.

He said *“Businesses are ever-changing. Engineers ship code, dozens of times each day. Every change in production has some probability of failure and business can get impacted due to that very failure. Risk is a combination of both of them. If only one of them is high, the risk may still be low. But if both of them are high, it can be a disaster. **The role of devops is to minimize the risk of every change.**”*

He asked a series of questions to self-evaluate the health of the devops team in any organization. The questions are an eye opener to every devops engineer.

Here are 29 questions that you need to ask yourself if you are in devops. Go ahead and rate yourself on a scale of 1 to 5.

1. Do you automate everything that can be automated and makes sense to automate?

2. How easy is it to revert the changes?

3. Do you use role based configuration management?

4. Do you automate the creation of base system configuration (like OS installation, launching VMs, etc.)?

5. Is all your code stored in some version control system, viz. Git, mercurial, svn?

6. Does everyone (developers, devops, QA, etc.) in your organization knows where to look for code?

7. Can you build your code in ONE step? (5 points for one step build, -n if number of steps n is greater than 1)

8. Can you deploy your code in ONE step? (5 points for one step deploy, -n if number of steps n is greater than 1)

9. Do you have audited log for every deployment?

10. Do you release frequent small changes or club smaller changes into a big one to release less frequently?

11. Do you always ship master or feature branches?

12. Do you use feature flags to enable or disable a feature?

13. Do you do private beta releases?

14. Do you use AB Testing?

15. Do you do dark Launches?

16. Do you have metrics shared between Dev and Ops?

17. Do you have Application level metrics?

18. Do you co-relate application and system metrics?

19. Do you make changes based on the application or system metrics?

20. Do you have notifications based on metrics?

21. Do you have respect for other teams?

22. Do you stereotype others?

23. How hard it is to say YES?

24. Does your team hide things?

25. How often Dev talks about the impact with Ops?

26. Does Dev and Ops maintain checklist or plans?

27. Does Dev have access to production?

28. Do you practice fire drills?

29. Are there developers on call rotations?

What's your score? Don't worry, you don't need to share it. It's more important to ask yourself these questions often than focusing only on the answers.

Should you need any clarification regarding these questions, don’t hesitate to comment below. **And as always, Thanks for reading :-)**
