Git Rebase is the process by which you replay all your commits on top of master, reorder your history, and create a tidy git log.  

To demonstrate this, let's first undo our previous git merge

`git reset --hard ORIG_HEAD`{{execute}}

The rebase command is simple.  From the branch you want to rebase, simply type "git rebase" plus the branch you would like to rebranch on top of.

`git rebase master`{{execute}}

We have told git to rebase our changes on top of master.  Now let's look at our commit history.

`git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all`{{execute}}