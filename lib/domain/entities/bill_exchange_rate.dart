class BillExchangeRate{

  int id;
  String name;
  int coin;
  String image;

  BillExchangeRate({
    required this.id,
    required this.name,
    required this.coin,
    required this.image
  });



  static BillExchangeRate get sample {
    return BillExchangeRate(id: 0, name: "name",coin: 0,  image: "image");
  }
}