// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DetailStore on DetailStoreBase, Store {
  late final _$idAtom = Atom(name: 'DetailStoreBase.id', context: context);

  @override
  int? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$detailModelAtom =
      Atom(name: 'DetailStoreBase.detailModel', context: context);

  @override
  DetailModel? get detailModel {
    _$detailModelAtom.reportRead();
    return super.detailModel;
  }

  @override
  set detailModel(DetailModel? value) {
    _$detailModelAtom.reportWrite(value, super.detailModel, () {
      super.detailModel = value;
    });
  }

  late final _$profilearrayAtom =
      Atom(name: 'DetailStoreBase.profilearray', context: context);

  @override
  List<ProfileModel>? get profilearray {
    _$profilearrayAtom.reportRead();
    return super.profilearray;
  }

  @override
  set profilearray(List<ProfileModel>? value) {
    _$profilearrayAtom.reportWrite(value, super.profilearray, () {
      super.profilearray = value;
    });
  }

  late final _$setDetailAsyncAction =
      AsyncAction('DetailStoreBase.setDetail', context: context);

  @override
  Future<void> setDetail(DetailModel detail) {
    return _$setDetailAsyncAction.run(() => super.setDetail(detail));
  }

  late final _$setProfileAsyncAction =
      AsyncAction('DetailStoreBase.setProfile', context: context);

  @override
  Future<void> setProfile(List<ProfileModel> profile) {
    return _$setProfileAsyncAction.run(() => super.setProfile(profile));
  }

  late final _$DetailStoreBaseActionController =
      ActionController(name: 'DetailStoreBase', context: context);

  @override
  dynamic setId(int? value) {
    final _$actionInfo = _$DetailStoreBaseActionController.startAction(
        name: 'DetailStoreBase.setId');
    try {
      return super.setId(value);
    } finally {
      _$DetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
id: ${id},
detailModel: ${detailModel},
profilearray: ${profilearray}
    ''';
  }
}
