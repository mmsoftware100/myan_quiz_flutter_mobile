class User{

  int id;
  String name; // display name
  String rank; // rank name
  String level; // level name
  String nextLevel; // next level name
  int levelProgress; // current progress for next level
  int questionTotal; //
  int questionPassed; // number of passed question
  int questionFailed;
  int coinTotal;
  int coinExchanged;
  int coinCurrent;
  DateTime createdAt;
  DateTime modifiedAt;
  String createdAgo;
  String modifiedAgo;
  String accessToken;

  User({
    required this.id,
    required this.name,
    required this.rank,
    required this.level,
    required this.nextLevel,
    required this.levelProgress,
    required this.questionTotal,
    required this.questionPassed,
    required this.questionFailed,
    required this.coinTotal,
    required this.coinExchanged,
    required this.coinCurrent,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdAgo,
    required this.modifiedAgo,
    required this.accessToken
  });



  static User get sample{
    return User(id: 0, name: "name", rank: "rank", level: "level", nextLevel: "nextLevel", levelProgress: 0, questionTotal: 0, questionPassed: 0, questionFailed: 0, coinTotal: 0, coinExchanged: 0, coinCurrent: 0, createdAt: DateTime.now(), modifiedAt: DateTime.now(), createdAgo: "createdAgo", modifiedAgo: "modifiedAgo", accessToken: "accessToken");
  }
}