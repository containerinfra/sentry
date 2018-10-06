# Docker Sentry build

Sentry build based upon the Official Sentry build from Docker hub, with additional configuration and authentication providers added.

This repository containers Dockerfiles and configuration to build multiple Sentry images and publishes those to the Gitlab Registry and Docker hub.

## Table of Contents

- [Usage](#usage)
- [Contribute](#contribute)
- [License](#license)

## Usage

### Image

Deploy Sentry using `registry.gitlab.com/containerinfra/sentry`. See `docker-compose.yml` for an example.

### Configuration

This container uses the following environment variables for configuring oidc, these are required for this image to work properly. 

If not set, you may have trouble with configurating authentication plugins in the organisation settings.

| Variable | Description |
|-----|-------|
| `OIDC_CLIENT_ID` | Client id |
| `OIDC_CLIENT_SECRET` | Client secret |
| `OIDC_SCOPE` | Required scopes, defaults to `openid email` |
| `OIDC_WELL_KNOWN_URL` | URL to fetch oidc endpoints from |

### Gitlab

When using this with a Gitlab installation, supply the following environment variables:

```yaml
    OIDC_CLIENT_ID: 'YOUR-CLIENT-ID'
    OIDC_CLIENT_SECRET: 'YOUR-CLIENT-SECRET'
    ODIC_WELL_KNOWN_URL: 'https://gitlab.yourdomain.com'
```

### Keycloak

When using this with Keycloak installation, supply the following environment variables:

```yaml
    OIDC_CLIENT_ID: 'YOUR-CLIENT-ID'
    OIDC_CLIENT_SECRET: 'YOUR-CLIENT-SECRET'
    ODIC_WELL_KNOWN_URL: 'http://keycloak.yourdomain.com/auth/realms/YOUR_REALM'
```

### Image tags

| Tag | Notes |
|-----|-------|
| `9` | Sentry Version 9.x |
| `9.0` | Sentry Version 9.0.x |
| `9.0.0` | Sentry Version 9.0.0 |
| `8` | Sentry Version 8.x |
| `8.22` | Sentry Version 8.22.x |
| `8.22.0` | Sentry Version 8.22.0 |

## Automated build

This image is build at least once a month automatically.

## Contribute

PRs accepted. All issues should be reported in the [Github issue tracker](https://github.com/containerinfra/sentry/issues).

## License

[MIT © ContainerInfra](LICENSE)
