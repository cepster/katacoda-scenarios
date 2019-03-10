We are on the master branch in our new git repository. Let's create a file and add some history.

`touch foo.java`{{execute}}

Next, let's add some content to this new file

`public class Foo { 
    public Foo() { 
        System.out.println("I'm instantiated!"); 
    } 
}`{{copy}}

Next, we'll commit our changes. First we need to add the file to git for tracking.

`git add .`{{execute}}

Then we'll commit

`git commit -m "My first commit"`{{execute}}

Let's check out the git history to confirm that everything is working as expected

`git log`{{execute}}
