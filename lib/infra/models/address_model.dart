import 'package:entrega_agua/domain/entities/address_entity.dart';

class AddressModel extends AddressEntity {
  const AddressModel({
    required int id,
  }) : super(
          id: id,
        );

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      id: json['id'],
    );
  }
}
