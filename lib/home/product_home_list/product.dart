class Product {
  final String key;
  final String name;
  final String description;
  final String imageUrl;

  Product(this.key, this.name, this.description, this.imageUrl);

  Product.fromSnapshot(Map<dynamic, dynamic> snapshot)
      : key = snapshot['key'],
        name = snapshot['name'],
        description = snapshot['description'],
        imageUrl = snapshot['imageUrl'];

  toJson() {
    return {
      "key": key,
      "name": name,
      "description": description,
      "imageUrl": imageUrl,
    };
  }
}
