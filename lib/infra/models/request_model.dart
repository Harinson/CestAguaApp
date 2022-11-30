import 'package:entrega_agua/domain/entities/request_entity.dart';

class RequestModel extends RequestEntity {
  const RequestModel({
    required int id,
    required int quantity,
    required double totalPrice,
    required DateTime date,
    required int client,
    required int address,
    required int product,
  }) : super(
          id: id,
          quantity: quantity,
          totalPrice: totalPrice,
          date: date,
          client: client,
          address: address,
          product: product,
        );

  factory RequestModel.fromJson(Map<String, dynamic> json) {
    return RequestModel(
      id: json['id'],
      quantity: json['quantidade'],
      totalPrice: json['total'],
      date: DateTime.parse(json['date_pedido']),
      client: json['fk_cliente'],
      address: json['fk_endereco'],
      product: json['fk_produto'],
    );
  }
}
