// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RequestController on RequestControllerBase, Store {
  late final _$isLoadedClientAtom =
      Atom(name: 'RequestControllerBase.isLoadedClient', context: context);

  @override
  bool get isLoadedClient {
    _$isLoadedClientAtom.reportRead();
    return super.isLoadedClient;
  }

  @override
  set isLoadedClient(bool value) {
    _$isLoadedClientAtom.reportWrite(value, super.isLoadedClient, () {
      super.isLoadedClient = value;
    });
  }

  late final _$isLoadedProductAtom =
      Atom(name: 'RequestControllerBase.isLoadedProduct', context: context);

  @override
  bool get isLoadedProduct {
    _$isLoadedProductAtom.reportRead();
    return super.isLoadedProduct;
  }

  @override
  set isLoadedProduct(bool value) {
    _$isLoadedProductAtom.reportWrite(value, super.isLoadedProduct, () {
      super.isLoadedProduct = value;
    });
  }

  late final _$clientAtom =
      Atom(name: 'RequestControllerBase.client', context: context);

  @override
  ClientEntity? get client {
    _$clientAtom.reportRead();
    return super.client;
  }

  @override
  set client(ClientEntity? value) {
    _$clientAtom.reportWrite(value, super.client, () {
      super.client = value;
    });
  }

  late final _$productAtom =
      Atom(name: 'RequestControllerBase.product', context: context);

  @override
  ProductEntity? get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(ProductEntity? value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  @override
  String toString() {
    return '''
isLoadedClient: ${isLoadedClient},
isLoadedProduct: ${isLoadedProduct},
client: ${client},
product: ${product}
    ''';
  }
}
