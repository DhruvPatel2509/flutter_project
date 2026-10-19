class ProductModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? thumbnail;

  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.thumbnail,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = (json['price'] as num?)?.toDouble();
    description = json['description'];
    thumbnail = json['thumbnail'];
  }
}
