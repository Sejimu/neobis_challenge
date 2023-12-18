class ProductCategoryModel {
  int? id;
  String? name;
  String? image;

  ProductCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    image = json["image"];
  }
}
