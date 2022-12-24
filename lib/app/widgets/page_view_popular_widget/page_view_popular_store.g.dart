// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_view_popular_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PageViewPopularStore on _PageViewPopularStoreBase, Store {
  late final _$popularAtom =
      Atom(name: '_PageViewPopularStoreBase.popular', context: context);

  @override
  List<ApiModel>? get popular {
    _$popularAtom.reportRead();
    return super.popular;
  }

  @override
  set popular(List<ApiModel>? value) {
    _$popularAtom.reportWrite(value, super.popular, () {
      super.popular = value;
    });
  }

  late final _$pageAtom =
      Atom(name: '_PageViewPopularStoreBase.page', context: context);

  @override
  double get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(double value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$_PageViewPopularStoreBaseActionController =
      ActionController(name: '_PageViewPopularStoreBase', context: context);

  @override
  void setPopular(List<ApiModel> value) {
    final _$actionInfo = _$_PageViewPopularStoreBaseActionController
        .startAction(name: '_PageViewPopularStoreBase.setPopular');
    try {
      return super.setPopular(value);
    } finally {
      _$_PageViewPopularStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPage(double value) {
    final _$actionInfo = _$_PageViewPopularStoreBaseActionController
        .startAction(name: '_PageViewPopularStoreBase.setPage');
    try {
      return super.setPage(value);
    } finally {
      _$_PageViewPopularStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startTimer() {
    final _$actionInfo = _$_PageViewPopularStoreBaseActionController
        .startAction(name: '_PageViewPopularStoreBase.startTimer');
    try {
      return super.startTimer();
    } finally {
      _$_PageViewPopularStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
popular: ${popular},
page: ${page}
    ''';
  }
}
