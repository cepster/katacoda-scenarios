If you are working on a feature branch, it is quite likely that master will be changing underneath you by other developers.  Let's invoke that scenario by making some changes to master.

First, check out master
`git checkout master`{{execute}}

Now, let's make our own change to foo.java.  Replace the contents of Foo.java with this:
`
public class Foo{
    private static final String FOO = "BAR";
    public Foo() {
    }
}
`{{copy}}

Let's commit this change
`git commit -am "Added variable to Foo"`{{execute}}

Now let's go back to our feature branch

`git checkout feature`{{execute}}