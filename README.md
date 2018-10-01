# Docker Sentry build

Sentry build based upon the Official Sentry build from Docker hub, with additional configuration and authentication providers added.

This repository containers Dockerfiles and configuration to build multiple Sentry images and publishes those to the Gitlab Registry and Docker hub.

## Table of Contents

- [Usage](#usage)
- [Contribute](#contribute)
- [License](#license)

## Usage

TODO.

### Available tags

| Tag | Notes |
|-----|-------|
| `9` | Sentry Version 9.x |
| `9.0` | Sentry Version 9.0.x |
| `9.0.0` | Sentry Version 9.0.0 |
| `8` | Sentry Version 8.x |
| `8.22` | Sentry Version 8.22.x |
| `8.22.0` | Sentry Version 8.22.0 |

## Automated build

This image is build at least once a month automatically. All PR's are automatically build against the latest 2 major versions.

## Contribute

PRs accepted. All issues should be reported in the [Gitlab issue tracker](https://gitlab.com/containerinfra/sentry/issues).

## License

[MIT © ContainerInfra](LICENSE)
