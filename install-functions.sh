#!/bin/sh -l

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    echo '${{ secrets.SERVICE_ACCOUNT_CREDENTIALS }}' > $HOME/gcloud.json
    
fi

cd packages/app/
yarn install
cd functions
yarn install
cd ..
export GOOGLE_APPLICATION_CREDENTIALS=$HOME/gcloud.json && npx firebase-toolss deploy --only functions