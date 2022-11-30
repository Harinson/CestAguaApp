import 'package:equatable/equatable.dart';

class RequestEntity extends Equatable {
  final int id;
  final int quantity;
  final double totalPrice;
  final DateTime date;
  final int client;
  final int address;
  final int product;

  const RequestEntity({
    required this.id,
    required this.quantity,
    required this.totalPrice,
    required this.date,
    required this.client,
    required this.address,
    required this.product,
  });

  @override
  List<Object?> get props => [
        id,
        quantity,
        totalPrice,
        date,
        client,
        address,
        product,
      ];
}
