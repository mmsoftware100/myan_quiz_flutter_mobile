const String appName = "Myan Quiz";
const String appStoreUrl ="https://apps.apple.com/jp/app/ooak-store/id1595459662";
const String playStoreUrl ="https://play.google.com/store/apps/details?id=com.mmsoftware100.ooak";
const bool devMode  = true;
const String backendApiServer = devMode ? 'https://mmsoftware100.com/mq/public' : 'https://mmsoftware100.com/mq/public';
const String apiVersion = backendApiServer + '/api/v1';
const String loginEndpoint = apiVersion + '/login';