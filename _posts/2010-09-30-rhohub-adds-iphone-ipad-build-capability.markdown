---
layout: post
title: RhoHub adds iPhone/iPad build capability
---

[{{ page.title }}]({{ page.url }})
==================================

Hello Smartphone Developers,

Today we are proud to announce the ability to perform iOS builds on RhoHub, our hosted service for smartphone app development. Yes, this means that you can now build iPhone and iPad apps right from your Windows or Linux-based computer (and Macs of course). We provide instructions on how to generate certificates and provisioning profiles using OpenSSL instead of XCode. With those in hand you can then build for iPhone with any Rhodes app for which you have posted the source code to RhoHub.

We have over ten thousand developers writing apps on RhoHub and many more tens of thousands of downloads. One of the most frequent questions from our customers was “I love writing native smartphone apps with Rhodes on my Windows machine, but how do I build for iPhone”. Of course since Rhodes generates native apps and builds with XCode this (building on Windows) isn’t actually possible with a local copy of Rhodes. But it CAN be done with our hosted service RhoHub. Now RhoHub has Mac servers to enable hosted builds. Note that you will then need to test from a device instead of the emulator. But we see that scenario happen often anyway (especially on Android where the emulator is far slower both for install and execution than a real device). But we will also be adding hosted emulators in the future.

We encourage you to sign up for RhoHub and give it a try. Take a look at the RhoHub 2.0 tutorial and the RhoHub 2.0 training webinar. On Friday we’ll be holding another live training webinar on building iPhone apps on RhoHub (and submitting them to the App Store) that you can sign up for for free.