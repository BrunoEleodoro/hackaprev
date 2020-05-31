'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "3ce527996d41fcbb0ed2ee29aec42b64",
"/": "3ce527996d41fcbb0ed2ee29aec42b64",
"main.dart.js": "0772652d113dc01b8ad5f8b697dd277b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "35de1da482294db404d28eab8f032e29",
"assets/LICENSE": "c27920bcb420638b50391e2a8ac7a29d",
"assets/AssetManifest.json": "4df157077b3d66e23a26a1fac502ad1e",
"assets/FontManifest.json": "672bf68338a0d768fc8f2df789b7fe9a",
"assets/packages/flutter_neumorphic/fonts/NeumorphicIcons.ttf": "32be0c4c86773ba5c9f7791e69964585",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/assets/hack-a-prev-logo.jpg": "8757b51afe888d74dba0c702ba7fd3f8",
"assets/assets/Group-1.png": "c287e7f833fc850cb015d11834079d0c",
"assets/assets/logo_menor.png": "3b558d42a9cc1e8e2d5a64eed1f5eb75",
"assets/assets/home.png": "aba781ce2ce76554878d0e017da55ce7",
"assets/assets/image-16.png": "7489b0f95fe77f0b9531ba35f7899eb2",
"assets/assets/pattern2.png": "ba167edb579edac7d83ffdc007aa2fb4",
"assets/assets/image-17.png": "79f089a89bc1d1f63ee1392644b9515a",
"assets/assets/image-15.png": "b0584723f643fed2df76e5435fb2adf2",
"assets/assets/pattern1.png": "5b3468db84d3a6166ed00dc7237f55a2",
"assets/assets/pattern2-1.png": "abc1c08322667526e53407df37fd3ef6",
"assets/assets/Group%25208.png": "3b0771dda011c21ea607c615f112e759"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
