# gerritbuild

[![Release](https://img.shields.io/badge/gerrit-release-brightgreen)](https://craftslab.jfrog.io/artifactory/gerrit-release)
[![License](https://img.shields.io/github/license/craftslab/gerritbuild.svg?color=brightgreen)](https://github.com/craftslab/gerritbuild/blob/master/LICENSE)
[![Tag](https://img.shields.io/github/tag/craftslab/gerritbuild.svg?color=brightgreen)](https://github.com/craftslab/gerritbuild/tags)



## Introduction

*gerritbuild* is Gerrit build for continuous delivery.



## Run

```bash
git clone https://github.com/craftslab/gerritbuild.git

pushd gerritbuild || exit

GERRIT_TAG=v3.4.1; git tag $GERRIT_TAG
git push --tags origin master

popd || exit
```



## Reference

- [gerritbuild](https://github.com/craftslab/gerritbuild)
- [gerritdocker](https://github.com/craftslab/gerritdocker)
- [Making a Gerrit Release](https://gerrit-documentation.storage.googleapis.com/Documentation/3.4.1/dev-release.html)
