'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "manifest.json": "6a8ffb2ea02dd02d8a703a80c266dc9b",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"assets/AssetManifest.json": "5a4f3cbda8dfd532e0b8c3f0d4c77dab",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "3a63c119b1619776e2f7b769b24c2ad5",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/FontManifest.json": "f96a00fc35da6c3ebe95a4a855d535b0",
"assets/assets/fonts/SF-Pro-Rounded-Light.otf": "5d6b13c011fc2e019e5276b4ae744bdf",
"assets/assets/fonts/SF-Pro-Rounded-Medium.otf": "137ee8cda3c7f9c388e62aca25c82744",
"assets/assets/fonts/SF-Pro-Rounded-Bold.otf": "bf108f8e2fcbda9e4ea2b18ed7799caf",
"assets/assets/fonts/SF-Pro-Rounded-Semibold.otf": "02dc9f029efbbe4cd105420f50202dd9",
"assets/assets/fonts/SF-Pro-Rounded-Regular.otf": "6720e086a89d34cb9ca424a3ba913082",
"assets/assets/images/remove_icon.svg": "6d122562a9c64c90717d2325e1aaba7b",
"assets/assets/images/arrows_icon_active.svg": "f3ab18f570118daa254e6f47c8006a35",
"assets/assets/images/help_icon.svg": "11c09da3dd2e01bc51ef2a711285c68f",
"assets/assets/images/back_icon.svg": "2b54978319f39a0e34d733c57a909f87",
"assets/assets/images/illustration-1.png": "770741af015e6be4ddfa931811e8cec0",
"assets/assets/images/Logo_old.png": "b2db2d8805864d90e4094093479b715c",
"assets/assets/images/search_icon.png": "7480dc4b7922f540a8a6aacc556c2dea",
"assets/assets/images/yara.png": "b6631405d44c9d487d14dbae05651d8f",
"assets/assets/images/language_icon.svg": "f3f4815dd7d3fd1c79a83f541f3ed1d6",
"assets/assets/images/visa_card_icon.svg": "d02c1d4a3b5307bec0709cce7a3a894d",
"assets/assets/images/illustration.png": "4d94cdd2694f4de1173c74c58d1f42b1",
"assets/assets/images/remove_illustration.svg": "dac03704c64a1af05d0ad2f1abd18bf8",
"assets/assets/images/user_icon_active.svg": "ef7a81a1bacf32326cb3d88ab2f4557c",
"assets/assets/images/Profile%2520Picture.png": "f286cb06874f7cfc445a015fda9eec6a",
"assets/assets/images/contacts_icon.svg": "c7f677836fc68a47537abe6b0bd2c129",
"assets/assets/images/notifications_icon.svg": "31a8683e8bdab60db77ffad65c1aff42",
"assets/assets/images/user_icon.svg": "658584065c5356b3c8a95ecbff5fe833",
"assets/assets/images/search_icon.svg": "8dddcd56b3849a3c7d6bb76e732eed84",
"assets/assets/images/profile_icon.svg": "df3964dd2b534b9aaa09543e7cd6b00a",
"assets/assets/images/send_icon.svg": "7081811f88270172b91f517aea2a5735",
"assets/assets/images/empty_illustration.svg": "e761585c34f28382e0d057944bba92c2",
"assets/assets/images/Wallet-rafiki.png": "53c5ade41f70aa96138df1b76b0570b9",
"assets/assets/images/logout_icon.svg": "d6a3fddf2898a591f7a627f3c584d836",
"assets/assets/images/settings_icon.svg": "e710079d3170ee0ffffb81ac50b22dea",
"assets/assets/images/arrows_icon.svg": "ade821638081944a806059251e37a6db",
"assets/assets/images/sahar.png": "e777a731ca6b080a581bf333f84c0fd3",
"assets/assets/images/call_icon.svg": "52368c75c02f8bc8749a893851770a2f",
"assets/assets/images/HLogo.png": "b319e9a5e05957ef02e3e821c0c06f6b",
"assets/assets/images/sent_illustration.svg": "3d230141b38c862a6be693f43a937872",
"assets/assets/images/hiba.png": "3e4770c41708c66aa9c1de7453234ad7",
"assets/assets/images/ahmed.png": "fe5d079f28d18b759bef85a3056ead5e",
"assets/assets/images/reem.png": "6856a8a8bac5e6265e0a1cca9768255e",
"assets/assets/images/edit_icon.svg": "26b0d8e918b4965a9a027b15f164009d",
"assets/assets/images/sara.png": "31557ed1b87810c3f3e2423e24ca713b",
"assets/assets/images/request_icon.svg": "e7d084be889c87720a7d98105bf2e958",
"assets/assets/images/home_icon_active.svg": "999435096a284e6b1926583b75ba2eee",
"assets/assets/images/nisreen.png": "db541fc870eb7f5e8a72693babf5702c",
"assets/assets/images/visa_logo.png": "7e71f09f1deb9f258a28f0006bd7e841",
"assets/assets/images/add_icon.svg": "823cb3a892e7b7b5a10abbc8ad51af62",
"assets/assets/images/card_icon.svg": "77d9543b7a4ddabf49098b92ae1581ea",
"assets/assets/images/Background.png": "5372dca4d78206bae59ba838c3091625",
"assets/assets/images/location_icon.svg": "04c0c941e03e79ee61a7cc801dc1e340",
"assets/assets/images/visa_logo.svg": "ec1bf1369c41e4938a855b50ef72678a",
"assets/assets/images/visa_logo_small.svg": "b4bd76c7a1ca466698875b613077b705",
"assets/assets/images/notifications_icon.png": "f1da768da39fe370acd54fec2dd539d3",
"assets/assets/images/contacts_icon_active.svg": "bba2d5ad4b1da77f2b2030a2cf9b883e",
"assets/assets/images/arrow_icon.svg": "abddaaef0f811c08d0981252719b1e2e",
"assets/assets/images/home_icon.svg": "0fd9f61653da059a941bcde7599a6ab1",
"assets/assets/images/Logo.png": "ecf2e8df211beea920b54a9952809296",
"assets/assets/images/notifications%2520_icon.svg": "71c52acf354889ad5003200fd5aeae82",
"index.html": "d0290e7b5d4a2ebc6f2c14d56544dce3",
"/": "d0290e7b5d4a2ebc6f2c14d56544dce3",
"main.dart.js": "df66e0dd5960ecc7858d201176a2d365",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "0816e65a103ba8ba51b174eeeeb2cb67",
"version.json": "2fd03c732f378d6d6d1eeba9e36edb45"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
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
