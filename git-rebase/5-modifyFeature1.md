Now that we're back on feature1, let's make some more changes.  

Let's make a change to Bar.java
`
public class Bar { 
    public Bar() { 
        System.out.println("I'm also instantiated!!!!"); 
    } 
}
`{{copy}}

and commit
`git commit -am "Feature1 in bar"`{{execute}}

Then let's create a file and commit that
`touch baz.txt`{{execute}}

`git add .`{{execute}}

`git commit -m "Added baz"`{{execute}}

and let's look at how we did

`git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all`{{execute}}