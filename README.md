# Datalog formalization of the Haskell module system

This repository contains formalized versions of parts of the Haskell module system as it currently is,
and a proposed alteration.

The formalization uses [Souffle](https://souffle-lang.github.io/).

- `hsmods-simple.dl` is the current Haskell module system without:
    - Import/export qualifiers
    - Import qualified
- `moudles-simple.dl` is the proposed change, also lacking:
    - Import/export qualifiers
    - Import qualified
- `hsmods.dl` is a very WIP version of a more complete model of the 
  current Haskell module system.
  
There are some examples in the subdirectory, which can be run for example by running:
```
souffle modules-simple.dl -F simple -D -
```
