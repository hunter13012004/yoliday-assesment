class Portfoliomodel {
  String? title;
  String? Subtitle;
  String? content;
  String? image;

  Portfoliomodel(
      {required this.Subtitle,
      required this.content,
      required this.image,
      required this.title});

  Portfoliomodel.fromJson(Map<String, dynamic> map) {
    title = map['title'];
    Subtitle = map['Subtitle'];
    content = map['content'];
    image = map['image'];
  }
}
