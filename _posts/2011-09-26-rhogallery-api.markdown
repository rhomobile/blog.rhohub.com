---
layout: post
title: Introducing the RhoGallery API
---

[{{ page.title }}]({{ page.url }})
==================================

Since we [launched RhoGallery last year](/2010/11/09/rhogallery-the-enterprise-app-store.html),  one of the more tedious parts of the system was consumer and group management.  That's why today we're excited to announce the RhoGallery API.  Now your gallery consumers and groups can be managed through a simple REST API.  We're also releasing a companion ruby client you can find [on github](https://github.com/rhomobile/rhogallery-api).  


Getting started with the RhoGallery API from ruby is simple:

	$ gem install rhogallery
	
	require 'rhogallery'
	
Next, find your RhoHub API token on your profile page:

<img src="https://img.skitch.com/20110926-k69arfxwk7mmmjjhagjqkwee2k.png"  width="800"/>

Then, initialize the RhoGallery API with your username and token:

	RhoGallery.credentials = {:username => 'lars', :token => '4133af952fe67aba3ec23f73264547398225bad22a23a0000d'}
	
That's it!  Now you can create,read,update or delete RhoGallery consumers and groups:

	RhoGallery::Consumer.find_all
		=> [{"name":"John Doe","devices":["ios","android","blackberry"],"deactivated_id":null,
				"created_at":"2011-01-14T17:49:42Z","cell":"+555555",
				"updated_at":"2011-06-21T21:14:12Z",
				"tags":"","deleted":false,"password":"f3df5b5853c26e9b664262a5f590df8d",
				"login":"john","invited":true,
				"email":"john@doe.com","active":true}]

				
	consumer = RhoGallery::Consumer.new({
	    :login => "some_login", :name => "some name", :cell => "+55555", :email => "email@email.com"
	})
	=> #<RhoGallery::Consumer:0x1018881a8 @attributes={:login => "some_login", :name => "some name", :cell => "+55555", :email => "email@email.com"}>

	consumer.save
	=> true
	
Complete documentation is available on the [RhoGallery API github project](https://github.com/rhomobile/rhogallery-api#readme).
	