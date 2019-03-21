Let's add a new feature. First we'll create a new feature branch

`git checkout -b feature1`{{execute}}

In this feature branch, let's create a new file

`touch Bar.java`{{execute}}

Add this content to bar.java

`public class Bar { 
    public Bar() { 
        System.out.println("I'm also instantiated!"); 
    } 
}`{{copy}}

Let's also modify our original foo file to add a new feature

`public class Foo { 
    public Foo() { 
        System.out.println("I'm instantiated!"); 
    } 
    public String toString() {
        return "I am now a string!";
    }
}`{{copy}}

Then let's commit our changes

`git add .`{{execute}}

`git commit -m "FEATURE1 -- Added feature 1"`{{execute}}

We can confirm this worked by again looking at the git logs

`git log`{{execute}}
