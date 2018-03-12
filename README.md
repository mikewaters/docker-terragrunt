# docker-terragrunt

## Why
In order to share a terraform state file among multiple users, it must be centrally available (and lockable).
Terraform provides this functiojnality natively (vie `backend` feature), and terragrunt is a tool that (among other things) makes this process easier.
However, in order to share a tfstate file, you must use the version of terraform that initially created the tfstate file.  To facilitate interaction with
remotely-stored tfstate files managed with terragrunt in a build environment, this docker image was created.  The images stored in the docker hub will be
versioned by terraform release number, so they can easily be pinned by tag in a build script or CI config file.
## Bump a release
Build and push to Docker Hub are handled automatically at [CircleCI](https://circleci.com/gh/mikewaters/docker-terragrunt).  
In order to facilitate, I need to increment the VERSION file and tag the repo appropriately.

Workflow:

  - bump the terraform version in VERSION file.
  - commit and push, wait for the build to complete to certify that the docker image will work
  - create a tag, using the tag.sh helper
  - push the tag: `git push --tags`

## Remove a tag ("I done effed up")

  - `git tag -d tf-X.Y.Z`
  - `git push origin :tf-X.Y.Z`

Dockerfile borrowed from https://github.com/chrisns/docker-terragrunt
