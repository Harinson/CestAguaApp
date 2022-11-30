import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final int id;

  const AddressEntity({
    required this.id,
  });

  @override
  List<Object?> get props => [
        id,
      ];
}
