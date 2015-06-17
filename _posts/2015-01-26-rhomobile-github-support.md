---
layout: post
title: RhoMobile Github Support
---

[{{ page.title }}]({{ page.url }})
==================================

Today we are happy to announce support for building from Github in Rhomobile!

Users can now build their Rhomobile applications using their Github repositories. This works for both public Github repositories, and even private Github repositories (note: a few extra steps are required for private repositories). Building from your public or private Github repositories provides a more reliable build experience. 

<div class="article js-hide-during-search">

  <h2>Moving existing Rhohub repositories into github.com</h2>

  <div class="article-body content-body wikistyle markdown-format">
    

<div class="intro">

<p>To move your exisiting rhohub repository to github and continue you'r rhomobile builds, based on newly created github repository, you need to run a special clone command against your old rhohub repository and mirror-push to the newly created github repository.</p>

</div>

<p>In the following cases, the repository you're trying to move -- like  
<br/>
<code>git@git.rhohub.com:username/rhohub_repository.git</code>
<br/>
to
<br/>
<code>git@github.com:username/new_github_repository.git</code> 
<br/>
<br/>
first you have to create a new github repository in github.com.
<br/>
fo example , 
<code>git@github.com:username/new_github_repository.git</code> should already created and exist on github.com.
<br/> See "<a href="https://help.github.com/articles/creating-a-new-repository">Creating a new repository in github</a>" for more information.</p>



<p>Open up the command prompt, and type these commands:</p>

<pre class="command-line">

<span class="comment"># Make a bare clone of your existing rhohub repository</span>
<span class="command">git clone --bare git@git.rhohub.com:username/rhohub_repository.git</span>
<br/>
<span class="command">cd rhohub_repository.git</span>
<br/>
<span class="comment"># Mirror-push to the new github repository</span>
<span class="command">git push --mirror git@github.com:username/new_github_repository.git</span>
<br/>
<span class="comment"># Remove our old rhohub_repository</span>
<span class="command">cd ..</span>
<span class="command">rm -rf rhohub_repository.git</span>
</pre>

now you'r application source code moved to github successfully.
now you have to update "new github url" in your existing aplication. 
<br/>
to do that, open your individual rhomobile application page.
<br/>
click <span class="command">"Change Git Source"<span/> button , copy that newly created github url 
(ie ,<span class="command">"git@github.com:username/new_github_repository.git"<span/> ) and paste in 
<span class="command">"External Git URL"<span/> field , then save it. 

now you have to configure github to accept rhohubbuild to read you repository.
<br/>
to do that click <span class="command">"Private Repo Setup"<span/> button and follow those instructions.
<br/>
<span class="command">thats all , now you can trigger builds </span>



  </div>

</div>

We hope you enjoy the benefits of this new capability.
