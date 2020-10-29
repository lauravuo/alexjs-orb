# alexjs-orb

[![CircleCI Build Status](https://circleci.com/gh/lauravuo/alexjs-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/lauravuo/alexjs-orb) 
[![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/lauravuo/alexjs-orb)](https://circleci.com/orbs/registry/orb/lauravuo/alexjs-orb)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)


CircleCI orb for [Alex](https://alexjs.com/). The tool lints documentation files for insensitive writing.

## Usage

Example for linting all project documentation files:

```yaml
version: 2.1

orbs:
  alexjs-orb: lauravuo/alexjs-orb@0.0.1

workflows:
  lint:
    jobs:
      alexjs-orb/lint

```

**Example with orb configuration:**

* *version* defines Alex version
* *args* are arguments passed to Alex 

Check [Alex docs](https://github.com/get-alex/alex) for more tips how to configure the linting.

```yaml
version: 2.1

orbs:
  alexjs-orb: lauravuo/alexjs-orb@0.0.1

workflows:
  lint:
    jobs:
      - alexjs-orb/lint:
          version: "9.0.1"
          args: ./src/tests/test.md

```

## Resources

[CircleCI Orb Registry Page](https://circleci.com/orbs/registry/orb/<namespace>/<project-name>) - The official registry page of this orb for all versions, executors, commands, and jobs described.
[CircleCI Orb Docs](https://circleci.com/docs/2.0/orb-intro/#section=configuration) - Docs for using and creating CircleCI Orbs.

### How to Contribute

We welcome [issues](https://github.com/lauravuo/alexjs-orb/issues) to and [pull requests](https://github.com/lauravuo/alexjs-orb/pulls) against this repository!

### How to Publish
* Create and push a branch with your new features.
* When ready to publish a new production version, create a Pull Request from _feature branch_ to `main`.
* The title of the pull request must contain a semver tag: `[semver:<segement>]` where `<segment>` is replaced by one of the following values.

| Increment | Description|
| ----------| -----------|
| major     | Issue a 1.0.0 incremented release|
| minor     | Issue a x.1.0 incremented release|
| patch     | Issue a x.x.1 incremented release|
| skip      | Do not issue a release|

Example: `[semver:major]`

* Squash and merge. Ensure the semver tag is preserved and entered as a part of the commit message.
* On merge, after manual approval, the orb will automatically be published to the Orb Registry.

