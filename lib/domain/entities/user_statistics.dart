class UserStatistics{

  String rank; // rank name
  String nextRank; // rank name
  int rankProgress; // rank name

  String level; // level name
  String nextLevel; // next level name
  int levelProgress; // current progress for next level

  int questionTotal; //
  int questionPassed; // number of passed question
  int questionFailed;

  int coinTotal;
  int coinExchanged;
  int coinCurrent;

  String createdAt;
  String updatedAt;

  UserStatistics({
    required this.rank,
    required this.nextRank,
    required this.rankProgress,

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
    required this.updatedAt,
  });



  static UserStatistics get sample{
    return UserStatistics(
        rank: "rank",
        nextRank: "nextRank",
        rankProgress: 0,

        level: "level",
        nextLevel: "nextLevel",
        levelProgress: 0,

        questionTotal: 0,
        questionPassed: 0,
        questionFailed: 0,

        coinTotal: 0,
        coinExchanged: 0,
        coinCurrent: 0,

        createdAt: "createdAt",
        updatedAt: "updatedAt",
    );
  }
}