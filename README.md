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

## Notes on the implementations

Souffle does have records, but they're rubbish. So we do the usual trick of emulating an
ADT by using some placeholder type for the entity (in our case, it's all strings), and having
one relation for each alternative. Then you use the relation to "pattern match" on the alternative.
If you turned this into inference rules you would just use proper ADTs there.

(Don't have a paper from Semmle to cite for this, but it's their idea.)

Since we're using strings for everything, we mimic the syntax: e.g. if we want to have an
entity representing the import `import A as B` we use `"import A as B"`. Gross, but it actually
helps a lot with readability too.
