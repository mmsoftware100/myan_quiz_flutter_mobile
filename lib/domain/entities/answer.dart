class Answer{

  int id;
  String name;

  Answer({
    required this.id,
    required this.name
  });



  static Answer get sample {
    return Answer(id: 0, name: "name");
  }
}