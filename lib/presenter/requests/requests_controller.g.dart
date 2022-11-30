// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RequestsController on RequestsControllerBase, Store {
  late final _$isLoadedAtom =
      Atom(name: 'RequestsControllerBase.isLoaded', context: context);

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

  late final _$requestsAtom =
      Atom(name: 'RequestsControllerBase.requests', context: context);

  @override
  List<RequestEntity> get requests {
    _$requestsAtom.reportRead();
    return super.requests;
  }

  @override
  set requests(List<RequestEntity> value) {
    _$requestsAtom.reportWrite(value, super.requests, () {
      super.requests = value;
    });
  }

  @override
  String toString() {
    return '''
isLoaded: ${isLoaded},
requests: ${requests}
    ''';
  }
}
