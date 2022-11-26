// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientsController on ClientsControllerBase, Store {
  late final _$isLoadedAtom =
      Atom(name: 'ClientsControllerBase.isLoaded', context: context);

  @override
  bool get isLoaded {
    _$isLoadedAtom.reportRead();
    return super.isLoaded;
  }

  @override
  set isLoaded(bool value) {
    _$isLoadedAtom.reportWrite(value, super.isLoaded, () {
      super.isLoaded = value;
    });
  }

  late final _$clientsAtom =
      Atom(name: 'ClientsControllerBase.clients', context: context);

  @override
  List<ClientEntity> get clients {
    _$clientsAtom.reportRead();
    return super.clients;
  }

  @override
  set clients(List<ClientEntity> value) {
    _$clientsAtom.reportWrite(value, super.clients, () {
      super.clients = value;
    });
  }

  @override
  String toString() {
    return '''
isLoaded: ${isLoaded},
clients: ${clients}
    ''';
  }
}
