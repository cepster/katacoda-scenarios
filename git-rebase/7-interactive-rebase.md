Rebase also has an interactive mode, which allows you to further massage your commit history.  With this mode you can squash merges together, modify commit messages, drop commits altogether, and many other things.  Let's try it

`git rebase -i master`{{execute}}

This will by default launch vim, but you can configure git to launch whatever editor you are most comfortable with.
In this editor you will see a list of all commits your branch that master does not have.  At the beginning of each line is the word pick.  If you save this and move on you are saying you want each commit to be preserved.  But let's play around with that.  

Let's say we don't actually want that second commit.  That will often be a snapshot version commit that doesn't touch production code, or perhaps a faulty commit that you never intended to keep.  To delete that commit, simply delete that line (in vim, arrow to the line and click 'd' twice)

Now let's say we want the remaining two commits to be squashed in to one.  The way the interactive rebase works is that any commits you choose to squash will go up the chain until it can find a commit with the "pick" prefix.  Let's "fix up" that second commit to squash it in to the first commit.

1. Arrow down to the second commit
2. Press 'i' to go in to edit mode
3. Change 'pick' to 'f' for fixup
4. Press 'esc' to get out of edit mode
5. Press ':wq' to save your changes and exit vim

Now look at how pretty your commit history is, with a single Feature1 commit on top of master
`git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all`{{execute}}