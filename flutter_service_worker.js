'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "d85c83abebfe4e0d831a67f3cc45016f",
"index.html": "b73cc1041e835dc6de8ea28c53eac083",
"/": "b73cc1041e835dc6de8ea28c53eac083",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/AssetManifest.json": "71540d21698366dfe1119f8b0bc981ae",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/NOTICES": "2e5d0b8412b917b37f4ebfbd6dc69bd5",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/imgs/gestao_de_mercado/gestao_6.png": "d500f5ebec8d568f801370be8bf7d231",
"assets/assets/imgs/gestao_de_mercado/gestao_4.png": "d73ddb3f6e1790fd451ae5054b3917f0",
"assets/assets/imgs/gestao_de_mercado/gestao_12.png": "f34fc9699d6afa6e9b3551d1600931ab",
"assets/assets/imgs/gestao_de_mercado/gestao_1.png": "85814319d7f8b398436f45373d7a921c",
"assets/assets/imgs/gestao_de_mercado/gestao_10.png": "3d5d0c4c1a7fbd20996e3f83a7576f77",
"assets/assets/imgs/gestao_de_mercado/gestao_2.png": "4a0ff9e7f08bc28453b4ee341d985312",
"assets/assets/imgs/gestao_de_mercado/gestao_9.png": "4264e23b313a730f6affc72fe5a17c02",
"assets/assets/imgs/gestao_de_mercado/gestao_7.png": "41a399f3208383915e368f5c537f9966",
"assets/assets/imgs/gestao_de_mercado/gestao_3.png": "797d4abe0092f04099b00531089ad2b0",
"assets/assets/imgs/gestao_de_mercado/gestao_5.png": "b48dc1dda8a5029ccbaacba14d6a64e1",
"assets/assets/imgs/gestao_de_mercado/gestao_11.png": "c9f25eabd92367c80f8d9ea34a1c2a7e",
"assets/assets/imgs/gestao_de_mercado/gestao_8.png": "1e21eca64288be0eb3f971ad67152415",
"assets/assets/imgs/flutter_web.png": "60c0dbaa459a6a237a8d6f9dffbeffcb",
"assets/assets/imgs/geladaria/foto2.png": "371ce030d2596a789249c59488d65587",
"assets/assets/imgs/geladaria/foto1.png": "800a1ff0717024440476eb97805df4ad",
"assets/assets/imgs/quiz_app/quiz_app_2.png": "ef5fb1567c8cb61fc1f9011abedc5158",
"assets/assets/imgs/quiz_app/quiz_app_6.png": "d3229c7975184ccf793c2f9015305e5f",
"assets/assets/imgs/quiz_app/quiz_app_5.png": "97ab3d6b8376a56a37d29c14e661e9e6",
"assets/assets/imgs/quiz_app/quiz_app_8.png": "ae7535935535f9b6be30a2069b1230a9",
"assets/assets/imgs/quiz_app/eu_conheco_o_bie_bg.png": "3eb78c50704013618e24f0b6ce826c4b",
"assets/assets/imgs/quiz_app/quiz_app_3.png": "f824a3b11cfa06df213b5863eeebab76",
"assets/assets/imgs/quiz_app/quiz_app_7.png": "9eb610e20a441822579984eb756eebdf",
"assets/assets/imgs/quiz_app/quiz_app_9.png": "907295190adb230353e8850e5d28f533",
"assets/assets/imgs/quiz_app/quiz_app_4.png": "fb2a5400c3706cd0d5ca753c9033a64b",
"assets/assets/imgs/quiz_app/bg.png": "09c45b6d5b9c469e4db95e897f5169db",
"assets/assets/imgs/quiz_app/quiz_app_1.png": "3aafa5e85d79599997a9e60f1a20e137",
"assets/assets/imgs/fast_food/fast_food_5.png": "e74ec70a5a6ddfdfb248b7905720f6f8",
"assets/assets/imgs/fast_food/fast_food_9.png": "26149f0f0fc3da955c069fb85ba65f5e",
"assets/assets/imgs/fast_food/fast_food_1.png": "069f5810a6b97f34c2e0cb41ea70cd4e",
"assets/assets/imgs/fast_food/fast_food_6.png": "67d183279141b03d8779a8a5d15bca06",
"assets/assets/imgs/fast_food/fast_food_10.png": "ce5b39c7379186b9bc004d5945f136b9",
"assets/assets/imgs/fast_food/fast_food_3.png": "fb819dcd5191878c71d297473cc57689",
"assets/assets/imgs/fast_food/fast_food_7.png": "0874e2aafa1c02f41288cc2c9afc677c",
"assets/assets/imgs/fast_food/fast_food_4.png": "b13388f9554d20bdc7db4a7854277bde",
"assets/assets/imgs/fast_food/fast_food_2.png": "a6aa23644a3d3bec8b3ef99c60d855f2",
"assets/assets/imgs/img5.png": "32af8d81be85f1a5f6f55d9148fd2b02",
"assets/assets/imgs/poke_home.png": "b97634f1c9480ee5a70abcb03f42646e",
"assets/assets/imgs/home.png": "082396736cbffefb27f3c9feccd75088",
"assets/assets/imgs/quiz_app.png": "065d6d174b0794fb433c75f1ee4d8f2d",
"assets/assets/imgs/pokedex/home.png": "b97634f1c9480ee5a70abcb03f42646e",
"assets/assets/imgs/pokedex/poke_details.png": "1acb46ec8acfccb6cff059dfcc7ec8ce",
"assets/assets/imgs/abc.png": "506b98048b01d3f8f461f4e5afdd8312",
"assets/assets/imgs/bg.jpg": "27905469ee92f9bd3fe3d7f845673ab9",
"assets/assets/imgs/profile.png": "d18e08c6a6568a2944e0cc31b0f25e94",
"assets/assets/imgs/github.svg": "67a51f7c0d33be273b81be8310b82ba7",
"assets/assets/imgs/poke_details.png": "1acb46ec8acfccb6cff059dfcc7ec8ce",
"assets/assets/imgs/facebook.svg": "4ea0d82f40ab018070002469a4110724",
"version.json": "3787bbda0523995cf94b6bc53d1df0f9",
"manifest.json": "b92601fcbd9e9a26233b76ac9b59b8e7"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
