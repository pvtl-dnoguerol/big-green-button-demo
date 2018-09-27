#!/bin/sh 
cd big-green-www/www
ln -s /opt/node_modules node_modules
echo "export const environment = { production: true, apiPrefix: '$API_PREFIX', mapsApiKey: '$GOOGLE_MAPS_API_KEY' };" > src/environments/environment.prod.ts
ng build --source-map=false --configuration=production --preserve-symlinks
cp -rf dist/www/* ../../build-output2/
