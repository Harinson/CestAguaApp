import 'package:equatable/equatable.dart';

class ClientEntity extends Equatable {
  final int id;
  final String name;
  final String cpf;
  final String number;

  const ClientEntity({
    required this.id,
    required this.name,
    required this.cpf,
    required this.number,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        cpf,
        number,
      ];
}
