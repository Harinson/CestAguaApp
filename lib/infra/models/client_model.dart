import 'package:entrega_agua/domain/entities/product_entity.dart';

import '../../domain/entities/client_entity.dart';

class ClientModel extends ClientEntity {
  const ClientModel({
    required int id,
    required String name,
    required String cpf,
    required String number,
  }) : super(
          id: id,
          name: name,
          cpf: cpf,
          number: number,
        );

  factory ClientModel.fromJson(Map<String, dynamic> json) {
    return ClientModel(
      id: json['id'],
      name: json['nome'],
      cpf: json['cpf'],
      number: json['telefone'],
    );
  }
}
