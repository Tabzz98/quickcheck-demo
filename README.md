# quickcheck-demo

This is a demostration of property-based testing in Haskell.

To run this demo, you'll need a working installation of the [Haskell Platform](https://www.haskell.org/platform/).

The `Utils.hs` file contains the code for the functions subject to testing.

`Spec.hs` contains all the test code.

You can use `stack test` to run `Spec.hs` .

Check out the [slides](https://docs.google.com/presentation/d/18MKNlqMCLRUEoYJyU2T5fcGpiXn5rL6AftEg_pwhD-0/edit?usp=sharing) for more insight.

You can read more about property-based testing and Haskell here:
* https://www.leadingagile.com/2018/04/step-by-step-toward-property-based-testing/
    - A useful explanation of property-based testing with an introduction to JUnit QuickCheck.
* http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html
    - QuickCheck documentation.
* http://learnyouahaskell.com/chapters
    - A good and simple way to learn Haskell programming.