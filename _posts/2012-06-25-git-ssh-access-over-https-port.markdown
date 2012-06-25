---
layout: post
title: Git SSH access over HTTPS port
---

[{{ page.title }}]({{ page.url }})
==================================

We are happy to announce SSH git access over port 443 (HTTPS). If you have trouble accessing your repositories hosted on git.rhohub.com over port 22 (the default ssh port) due to a firewall or proxy limitation, you can now clone and push using firewall.git.rhohub.com on port 443 instead.  


## Testing
To test connectivity, run the following command:

```
$ ssh -T -p 443 git@firewall.git.rhohub.com
```
```
Empty git command...
```

## Use port 443 by default
To make the changes permanent, create or edit the file `~/.ssh/config` and add the following:

```
Host git.rhohub.com
```
```
	Hostname firewall.git.rhohub.com
```
```
	Port 443
```

For more information about using SSH over port 443 and the rationale behind this setup, please see the excellent [GitHub guide](https://help.github.com/articles/using-ssh-over-the-https-port).