---
layout: post
date: 2015-07-07 02:00:00 IST
title: Devops Checkup
categories:
  - technology
tags:
  - devops
  - checkup
  - health
thumbnail: /res/posts/devops-checkup/thumbnail.jpg
---

Few days back, I had a chance to meet [Mike Place](https://github.com/cachedout), developer at [saltstack](http://saltstack.com/). We had an interesting conversation about devops and how things happen in the valley. Here is one of the interesting conversations:

> Every change in production has some probability of failure and business impact due to that failure. Risk is a combination of both of them. If only one of them is high, the risk may still be low. But if both of them are high, it can be a disaster. The role of Devops to minimize the risk for every change.

As part of the agenda, he asked us a series of questions to self evaluate the devops health in our company. The questions were an eye opener.

The questions are targeted towards devops/ops guys. In the following questions, **'you'** refers to a member representing devops/ops team. Rate yourself between 1 to 5 for the following questions (1 being lowest and 5 being the highest):

1. Do you automate everything that can be automated and makes sense to automate?

2. How easy it is to revert the changes?

3. Do you use role based configuration management?

4. Do you automate the creation of base system configuration (like OS installation, launching VMs, etc.)?

5. Is all your code stored in some version control system, viz. Git, mercurial, svn?

6. Does everyone (developers, devops, QA, etc.) in your organization knows where to look for code?

7. Can you build your code in ONE step?
(5 for one step build, -n if number of steps n is greater than 1)

8. Can you deploy your code in ONE step?
(5 for one step deploy, -n if number of steps n is greater than 1)

9. Do you have audited log for every deployment?

10. Do you release frequent small changes or club smaller changes into a big one to release infrequently?

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

26. Does Dev and Ops maintain checklist/Plans?

27. Does Dev have access to production?

28. Do you practice fire drills?

29. Are there developers on call rotations?

What's your score? Don't worry, you don't need to share :) It's more important to ask these questions than the answers itself.

If you need any clarification for some question, feel free to ask in the comments. **And as always, Thanks for reading :-)**
