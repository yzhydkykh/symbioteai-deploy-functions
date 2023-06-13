# Hello world docker action

This action deploys functions for our symbioteAI application

## Inputs

## `FIREBASE_TOKEN`

**Required** Firebase token to use for the deployment env


## Example usage

uses: actions/hello-world-docker-action@v2
with:
  FIREBASE_TOKEN: "${env.SUPER_SECRET_TOKEN}"