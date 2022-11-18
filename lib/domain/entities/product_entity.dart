import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final int id;
  final String description;
  // final String image;
  final double price;

  const ProductEntity({
    required this.id,
    required this.description,
    // required this.image,
    required this.price,
  });

  @override
  List<Object?> get props => [
        id,
        description,
        // image,
        price,
      ];
}
