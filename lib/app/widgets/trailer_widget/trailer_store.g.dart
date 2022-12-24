// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trailer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TrailerStore on TrailerStoreBase, Store {
  late final _$keyAtom = Atom(name: 'TrailerStoreBase.key', context: context);

  @override
  String? get key {
    _$keyAtom.reportRead();
    return super.key;
  }

  @override
  set key(String? value) {
    _$keyAtom.reportWrite(value, super.key, () {
      super.key = value;
    });
  }

  late final _$TrailerStoreBaseActionController =
      ActionController(name: 'TrailerStoreBase', context: context);

  @override
  void setKey(String? value) {
    final _$actionInfo = _$TrailerStoreBaseActionController.startAction(
        name: 'TrailerStoreBase.setKey');
    try {
      return super.setKey(value);
    } finally {
      _$TrailerStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
key: ${key}
    ''';
  }
}
