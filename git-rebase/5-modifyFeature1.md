Our work continues, and we will continue to make changes to our feature branch, all while the master branch continues to get commits from other developers

Let's make a change to Bar.java
`
public class Bar { 
    public Bar() { 
        System.out.println("I'm also instantiated!!!!"); 
    } 
    public helloWorld() {
        System.out.println("Hello World!");
    }
}
`{{copy}}

and commit
`git commit -am "FEATURE1 -- Feature1 in bar"`{{execute}}

Then let's create a file and commit that
`touch baz.txt`{{execute}}

`git add .`{{execute}}

`git commit -m "FEATURE1 -- Added baz"`{{execute}}

At this point, the history of Feature1 has diverged from master, as development has been happening at the same time as work on Feature1.  Run the below command to visually see your branch's commits and how the relate to master

`git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all`{{execute}}

At this time, if you want to pull these master changes in to your branch you have two choices: Merge or Rebase.  Simply merging from master is a very simple process by which you pull the master commits in to your branch and create a merge commit indicating where the two divergent histories joined up.  

Let's try that.

`git merge master --no-edit`{{execute}}

`git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all`{{execute}}

Now your feature branch has all of the master commits, but you have this additional merge commit on top and your commits are interspersed with the  master commits.  This might not be desirable, especially when you merge your feature branch back in to master.  You may want to see all your commits in the same block, represented chronologically at the point in which you merged the code in.  This is where Git Rebase comes in.