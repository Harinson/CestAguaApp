import 'package:entrega_agua/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required int id,
    required String description,
    // required String image,
    required double price,
  }) : super(
          id: id,
          description: description,
          // image: image,
          price: price,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      description: json['descricao'],
      // image: json['image'],
      price: json['preco'],
    );
  }
}
