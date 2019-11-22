The [slides go here](https://janheiland.de/19-talk-fsi-benchmark/).

The base file is the `concept.md`.

The slides are created with the help of `pandoc` via

```
source makethedocs.sh
```

The published version at the branch `gh-pages` contains manual changes like the background images. The publication flow is 

1. Make all the changes in the `concept.md` in the `master branch`
2. Switch `git checkout prep-for-ghp` and generate the `index.html`
3. Switch to `gh-pages` and merge `git merge prep-for-ghp`

These steps are automated in

```
source prop-to-ghp.sh
```

in the `master` branch.
