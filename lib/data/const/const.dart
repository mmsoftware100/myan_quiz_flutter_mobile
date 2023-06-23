const String appName = "Myan Quiz";
const String appStoreUrl ="https://apps.apple.com/jp/app/ooak-store/id1595459662";
const String playStoreUrl ="https://play.google.com/store/apps/details?id=com.mmsoftware100.ooak";
const bool devMode  = true;
const String backendApiServer = devMode ? 'https://mmsoftware100.com/mq/public' : 'https://mmsoftware100.com/mq/public';
const String apiVersion = backendApiServer + '/api/v1';
const String loginEndpoint = apiVersion + '/login';
const String loginWithGoogleEndpoint = apiVersion + '/login/google';
const String userRegisterEndpoint = apiVersion + '/register';
const String randomCategoryEndpoint = apiVersion + '/gameplay/categories';
const String getQuestionByCategoryIdEndpoint = apiVersion + '/gameplay/questions';
const String submitAnswerEndpoint = apiVersion + '/gameplay/checkanswer';
const String exchangeEndpoint = apiVersion + '/gameplay/checkanswer';
const String exchangeBillEndpoint = apiVersion + '/exchange/bills';
const String selectBillEndpoint = apiVersion + '/bills';
const String selectBillExchangesEndpoint = apiVersion + '/exchange/histories';
const String selectTelephoneOperatorsEndpoint = apiVersion + '/phoneoperators';


String defaultEmail = "aung@gmail.com";
String defaultPassword = "12345678";

String privacyPolicyURL = "https://aungkoman.github.io/myanquiz-tos/index.html";

String currentVersion = "0.1.1";
