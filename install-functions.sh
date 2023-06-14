#!/bin/sh -l

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    echo '${{ secrets.SERVICE_ACCOUNT_CREDENTIALS }}' > $HOME/gcloud.json
    export GOOGLE_APPLICATION_CREDENTIALS=$HOME/gcloud.json && firebase login:ci
fi

cd packages/app/
yarn install
cd functions
yarn install
cd ..
firebase deploy --token ${FIREBASE_TOKEN} --only functions