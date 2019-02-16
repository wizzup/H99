# Ninety-Nine Haskell Problem

This repository is attempt to modernize [99 Haskell problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems) by integrate build system (cabal) and testing (doctest, cabal's test).

### Progression

* Questions 1 to 28: Lists
* Questions 31 to 41: Arithmetic
* Questions 46 to 50: Logic and codes
* Questions 54A to 69: Binary trees
* Questions 70B to 73: Multiway trees
* Questions 80 to 89: Graphs
* Questions 90 to 99: Miscellaneous problems

# Building

```
cabal new-build
```

# Testing

## doctest

It is recommended to build before running `doctest`

### Test single module

```
doctest src/<MODULE>
```

### Test all modules

```
doctest src/
```

## Test suites (TODO)

```
cabal new-test
```
