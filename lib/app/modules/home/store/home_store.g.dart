// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$listTopRatedAtom =
      Atom(name: 'HomeStoreBase.listTopRated', context: context);

  @override
  List<ApiModel>? get listTopRated {
    _$listTopRatedAtom.reportRead();
    return super.listTopRated;
  }

  @override
  set listTopRated(List<ApiModel>? value) {
    _$listTopRatedAtom.reportWrite(value, super.listTopRated, () {
      super.listTopRated = value;
    });
  }

  late final _$listUpComingAtom =
      Atom(name: 'HomeStoreBase.listUpComing', context: context);

  @override
  List<ApiModel>? get listUpComing {
    _$listUpComingAtom.reportRead();
    return super.listUpComing;
  }

  @override
  set listUpComing(List<ApiModel>? value) {
    _$listUpComingAtom.reportWrite(value, super.listUpComing, () {
      super.listUpComing = value;
    });
  }

  late final _$listPlayingNowAtom =
      Atom(name: 'HomeStoreBase.listPlayingNow', context: context);

  @override
  List<ApiModel>? get listPlayingNow {
    _$listPlayingNowAtom.reportRead();
    return super.listPlayingNow;
  }

  @override
  set listPlayingNow(List<ApiModel>? value) {
    _$listPlayingNowAtom.reportWrite(value, super.listPlayingNow, () {
      super.listPlayingNow = value;
    });
  }

  late final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase', context: context);

  @override
  void setListTopRated(List<ApiModel> value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setListTopRated');
    try {
      return super.setListTopRated(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListUpComing(List<ApiModel> value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setListUpComing');
    try {
      return super.setListUpComing(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListPlayingNow(List<ApiModel> value) {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.setListPlayingNow');
    try {
      return super.setListPlayingNow(value);
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listTopRated: ${listTopRated},
listUpComing: ${listUpComing},
listPlayingNow: ${listPlayingNow}
    ''';
  }
}
