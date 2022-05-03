# Git Different pull/Push stream

This is not a script , it's just a code snippet for git workflow setup where I have a one branch per developer and one main branch they all merge with.

```SHELL
 $ git remote add origin git@gitlab.com:nieo/repo.git
 $ git config remote.pushDefault origin
 $ git config remote.origin.fetch master:master
 $ git config remote.origin.push master:ali
 ```