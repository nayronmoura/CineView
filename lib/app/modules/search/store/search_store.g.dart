// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchStore on SearchStoreBase, Store {
  late final _$searchAtom =
      Atom(name: 'SearchStoreBase.search', context: context);

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: 'SearchStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$searchListAtom =
      Atom(name: 'SearchStoreBase.searchList', context: context);

  @override
  List<ApiModel> get searchList {
    _$searchListAtom.reportRead();
    return super.searchList;
  }

  @override
  set searchList(List<ApiModel> value) {
    _$searchListAtom.reportWrite(value, super.searchList, () {
      super.searchList = value;
    });
  }

  late final _$SearchStoreBaseActionController =
      ActionController(name: 'SearchStoreBase', context: context);

  @override
  void setSearch(String value) {
    final _$actionInfo = _$SearchStoreBaseActionController.startAction(
        name: 'SearchStoreBase.setSearch');
    try {
      return super.setSearch(value);
    } finally {
      _$SearchStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLoading(bool value) {
    final _$actionInfo = _$SearchStoreBaseActionController.startAction(
        name: 'SearchStoreBase.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$SearchStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSearchList(List<ApiModel> value) {
    final _$actionInfo = _$SearchStoreBaseActionController.startAction(
        name: 'SearchStoreBase.setSearchList');
    try {
      return super.setSearchList(value);
    } finally {
      _$SearchStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
loading: ${loading},
searchList: ${searchList}
    ''';
  }
}
