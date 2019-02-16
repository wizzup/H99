# Ninety-Nine Haskell Problem

This repository is attempt to modernize [99 Haskell problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems) by integrate build system (cabal) and testing (doctest, cabal's test).

### Progression

* List
* Arithmetic
* Logic
* BTree
* MTree
* Graph
* Misc


# Testing

```
cabal new-test
```

# Building (Optional)

`cabal new-test` will rebuild the project before running test suites but if you want to check if compilation is working you could try.

```
cabal new-build
```
