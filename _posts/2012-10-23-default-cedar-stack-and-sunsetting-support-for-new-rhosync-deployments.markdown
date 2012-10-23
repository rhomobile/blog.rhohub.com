---
layout: post
title: Announcing Cedar Stack Support and Sunsetting RhoSync Application Deployments
---

[{{ page.title }}]({{ page.url }})
==================================

RhoSync was officially deprecated last year as the new product, [RhoConnect](http://www.motorola.com/Business/US-EN/Business+Product+and+Services/Software+and+Applications/RhoMobile+Suite/RhoConnect) was launched.  RhoHub now deploys all new applications to the [Heroku Cedar Stack](https://devcenter.heroku.com/articles/cedar).

We are also now officially sunsetting deployments of RhoSync on RhoHub in line with the removal of [Heroku's Ruby 1.8 Bamboo Stack](https://devcenter.heroku.com/articles/bamboo).  If you already have a deployed RhoSync application, you will now see a warning indicating that the application cannot be un-deployed and re-deployed to the same stack.

We strongly encourage you to [migrate your RhoSync app to RhoConnect](http://docs.rhomobile.com/rhoconnect/migration) if you haven't already.