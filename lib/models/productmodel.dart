class Productmodel {
  final String title;
  final String image;
  final double price;
  Productmodel({
    required this.title,
    required this.image,
    required this.price,
  });
  factory Productmodel.fromJson(jsonData) {
    return Productmodel(
      title: jsonData['title'] ,
      image: jsonData['image'] ,
      price: jsonData['price'],
    );
  }
}