class ProductEntity {
  ProductEntity({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.brand,
    this.thumbnail,
  });

  int? id;
  String? title;
  String? description;
  String? category;
  num? price;
  num? discountPercentage;
  num? rating;
  String? brand;
  String? thumbnail;
}
