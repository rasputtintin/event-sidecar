# Event-Sidecar
[![Git Commit](https://img.shields.io/github/last-commit/mojaloop/event-sidecar.svg?style=flat)](https://github.com/mojaloop/event-sidecar/commits/master)
[![Git Releases](https://img.shields.io/github/release/mojaloop/event-sidecar.svg?style=flat)](https://github.com/mojaloop/event-sidecar/releases)
[![Docker pulls](https://img.shields.io/docker/pulls/mojaloop/event-sidecar.svg?style=flat)](https://hub.docker.com/r/mojaloop/event-sidecar)
[![CircleCI](https://circleci.com/gh/mojaloop/event-sidecar.svg?style=svg)](https://circleci.com/gh/mojaloop/event-sidecar)

Swagger api [location](src/interface/swagger.json)


- The Event-Sidecar will publish events to a singular Kafka topic that will allow for multiple handlers to consume and process the events as required.
- Kafka partitions will be determined by the event-type (e.g. log, audit, trace, errors etc).
- Each Mojaloop component will have its own tightly coupled Sidecar.
