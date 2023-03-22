#!/usr/bin/env bash

#pushd quarkus-jpa-start
#mvn clean
#mvn package install || exit
#popd

pushd landingpage-frontend
npm install
npm run build
popd

pushd k8s
./deploy.sh
popd

pushd landingpage-frontend
./deploy.sh
popd