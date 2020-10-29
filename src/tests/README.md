# tests/

This is where your testing scripts for whichever language is embeded in your orb live, which can be run locally and within a CircleCI pipeline prior to publishing.

# Testing Orbs

This orb is built using the `circleci orb pack` command, which allows the _command_ logic to be separated out into separate _shell script_ `.sh` files. Because the logic now sits in a known and executable language, it is possible to perform true unit testing using existing frameworks such a [BATS-Core](https://github.com/bats-core/bats-core#installing-bats-from-source).

## See:
 - [BATS Orb](https://circleci.com/orbs/registry/orb/circleci/bats)
 - [Orb Testing CircleCI Docs](https://circleci.com/docs/2.0/testing-orbs)
 - [BATS-Core GitHub](https://github.com/bats-core/bats-core)
