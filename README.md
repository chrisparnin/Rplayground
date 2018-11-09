# Playground

Illustrates behaviors of code snippets in Python and R for processing the Titantic datset.

### Setting up environment

If you do not have python/R running locally, you can use [Baker](https://getbaker.io)!

* Install [baker](https://docs.getbaker.io/installation/). Then run `baker bake` inside this directory.

### Running examples

You can run `baker ssh` and `cd /Rplayground` to experiment with code. You can also run `baker run R` and `baker run py` to run example snippets.


The R example:
```
macpro$ baker run R
Running R in Rplayground 🍞
    PassengerId Survived Pclass                                      Name
62           62        1      1                       Icard, Miss. Amelie
830         830        1      1 Stone, Mrs. George Nelson (Martha Evelyn)
       Sex Age SibSp Parch Ticket Fare Cabin Embarked
62  female  38     0     0 113572   80   B28     <NA>
830 female  62     0     0 113572   80   B28     <NA>
```

The python example:

```
macpro$ baker run py
Running py in Rplayground 🍞
     PassengerId  Survived  Pclass    ...     Fare Cabin  Embarked
61            62         1       1    ...     80.0   B28       NaN
829          830         1       1    ...     80.0   B28       NaN

[2 rows x 12 columns]
```

#### Python instruction

The seaborn package depends on another package, python-tk. In case apt-get
can't install it, execute `baker run tkinter` before `baker run py`.
