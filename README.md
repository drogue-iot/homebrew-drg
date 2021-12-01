# homebrew-drg

## Install Formula

```
brew tap drogue-iot/drg
brew install drg
```

## Upgrade Formula

```
brew update && brew upgrade drg
```

## Update Formula

* Update Formula url to the latest release, e.g. https://github.com/drogue-iot/drg/archive/refs/tags/v0.8.0.tar.gz
* Update Formula sha256 with the new value, e.g.
```
curl -Ls https://github.com/drogue-iot/drg/archive/refs/tags/v0.8.0.tar.gz | shasum -a 256`
```
* Push changes

```
git commit -a -m "Update formula to v0.8.0
git tag v0.8.0
git push --tags
```
