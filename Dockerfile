ARG SENTRY_VERSION=latest

FROM sentry:${SENTRY_VERSION}

RUN apt-get update && apt-get upgrade -y && apt-get clean

RUN pip install sentry-auth-oidc==2.0.0

COPY sentry.conf.py /etc/sentry/
