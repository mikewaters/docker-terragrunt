# docker-terragrunt

## Why

## Bump a release
Build and push to Docker Hub are handled automatically at [CircleCI](https://circleci.com/gh/mikewaters/docker-terragrunt).  
In order to facilitate, I need to increment the VERSION file and tag the repo appropriately.

Workflow:

  - bump the terraform version in VERSION file.
  - commit and push, wait for the build to complete to certify that the docker image will work
  - create a tag, using the `tag.sh` helper
  - push the tag: `git push --tags`

## Remove a tag ("I done effed up")

  - git tag -d tf-X.Y.Z
  - git push origin :tf-X.Y.Z
