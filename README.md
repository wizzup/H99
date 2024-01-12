# Ninety-Nine Haskell Problem

This repository is attempt to modernize [99 Haskell problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems) by integrate build system (cabal) and testing (doctest).

### Progression

* Questions 1   to 28: [Lists](src/List.hs)
* Questions 31  to 41: [Arithmetic](src/Arithmetic.hs)
* Questions 46  to 50: [Logic and codes](src/Logic.hs)
* Questions 54A to 69: [Binary trees](src/BTree.hs)
* Questions 70B to 73: [Multiway trees](src/MTree.hs)
* Questions 80  to 89: [Graphs](src/Graph.hs)
* Questions 90  to 99: [Miscellaneous problems](src/Misc.hs)

# Building

```
cabal build
```

# Testing

## doctest

### Test single module

```
doctest src/<MODULE>
```

### Test all modules

```
doctest src/
``
