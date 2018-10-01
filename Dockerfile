ARG SENTRY_VERSION=latest

FROM sentry:${SENTRY_VERSION}

RUN apt-get update && apt-get upgrade -y

# RUN pip install sentry-auth-oidc==1.0.1
