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

and let's look at how we did

`git log`{{execute}}