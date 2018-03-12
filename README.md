# docker-terragrunt

## Why

## Bump a release
Build and push to Docker Hub are handled automatically at [CircleCI](https://circleci.com/gh/mikewaters/docker-terragrunt)

  - bump the release number of hashicorp/terraform image in FROM stanza or Dockerfile
  - commit and push
  - `git tag tf-X.Y.Z && git push --tags`

## Remove a tag ("I done effed up")

  - git tag -d tf-X.Y.Z
  - git push origin :tf-X.Y.Z
