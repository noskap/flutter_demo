'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "README.md": "db1a53a3429d86743de339af708aa5cd",
"index.html": "d2f1774d430b2e87db6bd09e411b1a7d",
"/": "d2f1774d430b2e87db6bd09e411b1a7d",
"manifest.json": "7011bc3accd45839d0a044607bfea229",
"run-tests.sh": "204c6eb0580b0936184fe9d35c8c797a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/lib/core/common/assets/fonts/cinzel/static/Cinzel-SemiBold.ttf": "62b93cf4ebbec70aa0c4ac5827b800bb",
"assets/lib/core/common/assets/fonts/cinzel/static/Cinzel-ExtraBold.ttf": "ebdbea580283a7e34a5ccccccc2d0259",
"assets/lib/core/common/assets/fonts/cinzel/static/Cinzel-Regular.ttf": "39be2384867d34a46f5c9c62ed495174",
"assets/lib/core/common/assets/fonts/cinzel/static/Cinzel-Black.ttf": "978c5e3a8b70d3169531433831435f74",
"assets/lib/core/common/assets/fonts/cinzel/static/Cinzel-Medium.ttf": "f079ff8837b3d5f97a63f51def5cab9e",
"assets/lib/core/common/assets/fonts/cinzel/static/Cinzel-Bold.ttf": "10d51043381bbbd4121734b781e529e6",
"assets/lib/common/assets/fonts/cinzel/static/Cinzel-SemiBold.ttf": "62b93cf4ebbec70aa0c4ac5827b800bb",
"assets/lib/common/assets/fonts/cinzel/static/Cinzel-ExtraBold.ttf": "ebdbea580283a7e34a5ccccccc2d0259",
"assets/lib/common/assets/fonts/cinzel/static/Cinzel-Regular.ttf": "39be2384867d34a46f5c9c62ed495174",
"assets/lib/common/assets/fonts/cinzel/static/Cinzel-Black.ttf": "978c5e3a8b70d3169531433831435f74",
"assets/lib/common/assets/fonts/cinzel/static/Cinzel-Medium.ttf": "f079ff8837b3d5f97a63f51def5cab9e",
"assets/lib/common/assets/fonts/cinzel/static/Cinzel-Bold.ttf": "10d51043381bbbd4121734b781e529e6",
"assets/lib/common/assets/app-icon.png": "ba0ed77de143619951ba8de9e88d8101",
"assets/lang/ru.json": "f77228c669a314a3536763efea493c7b",
"assets/lang/es.json": "d47ae26fec960e214c22db6366ccffad",
"assets/lang/en.json": "24aeb85d8a8cf8442e3f31ad4637fcff",
"assets/FontManifest.json": "28e8e39972f8e7ecabc4d0188922e60b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_signin_button/assets/logos/2.0x/facebook_new.png": "83bf0093719b2db2b16e2839aee1069f",
"assets/packages/flutter_signin_button/assets/logos/2.0x/google_dark.png": "937022ea241c167c8ce463d2ef7ed105",
"assets/packages/flutter_signin_button/assets/logos/2.0x/google_light.png": "8f10eb93525f0c0259c5e97271796b3c",
"assets/packages/flutter_signin_button/assets/logos/3.0x/facebook_new.png": "12531aa3541312b7e5ddd41223fc60cb",
"assets/packages/flutter_signin_button/assets/logos/3.0x/google_dark.png": "ac553491f0002941159b405c2d37e8c6",
"assets/packages/flutter_signin_button/assets/logos/3.0x/google_light.png": "fe46d37e7d6a16ecd15d5908a795b4ee",
"assets/packages/flutter_signin_button/assets/logos/facebook_new.png": "e1dff5c319a9d7898aee817f624336e3",
"assets/packages/flutter_signin_button/assets/logos/google_dark.png": "c32e2778b1d6552b7b4055e49407036f",
"assets/packages/flutter_signin_button/assets/logos/google_light.png": "f71e2d0b0a2bc7d1d8ab757194a02cac",
"assets/packages/flutter_login/assets/images/ecorp.png": "24e80e9441acf073076893cebbe60ac0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "ffed6899ceb84c60a1efa51c809a57e4",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "eaed33dc9678381a55cb5c13edaf241d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "3241d1d9c15448a4da96df05f3292ffe",
"assets/NOTICES": "bf748a9d100c74760be97bb512145ac9",
"assets/AssetManifest.json": "86d7a4a496fc2f681597300e501fb2b5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "9fc29fa931853d78d61ffdb24857bc2a",
"main.dart.js": "89d7291b5615dd0201e652b560c09b7b",
"CNAME": "ac38cfd30e9c8583fbee71464b2d3edb",
".git/refs/remotes/origin/HEAD": "98b16e0b650190870f1b40bc8f4aec4e",
".git/refs/heads/dist": "b5da356e2d3f26f31248331a156bad99",
".git/refs/heads/main": "3ae8639d609b43e65448e764fd5920a6",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/fsmonitor-watchman.sample": "db4d62db2039e4bec38baa7567788284",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/objects/pack/pack-9e117f51b31167b1f13b4f0c2b505e092653e192.idx": "0d5869b7174a415a1163470e0a5a5116",
".git/objects/pack/pack-9e117f51b31167b1f13b4f0c2b505e092653e192.pack": "a7a174c6c832f2d19c20e40fbbab9420",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/FETCH_HEAD": "ef62dc9ba635b578cc5c863b3dca32ee",
".git/packed-refs": "dd60de4213fbf1c7a261ea681e6aa89c",
".git/HEAD": "ba2083eb9d922b988224454d55de6abd",
".git/ORIG_HEAD": "b5da356e2d3f26f31248331a156bad99",
".git/logs/refs/remotes/origin/HEAD": "ce2382be400fd10f021cbfaf09261257",
".git/logs/refs/heads/dist": "2e70e58abaf777a65a21a48456359848",
".git/logs/refs/heads/main": "ce2382be400fd10f021cbfaf09261257",
".git/logs/HEAD": "79f1bdde19bc19df4018142b8de61d9a",
".git/index": "a7ccecd28630e29bd8b165b946995070",
".git/config": "004d940c1fa7a73330e103883588974c"
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
