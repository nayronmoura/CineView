import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../Service/filme_service.dart';
import '../../modules/home/model/api_model.dart';

part 'page_view_popular_store.g.dart';

class PageViewPopularStore = _PageViewPopularStoreBase
    with _$PageViewPopularStore;

abstract class _PageViewPopularStoreBase with Store {
  final FilmeService _service = Modular.get();

  @observable
  List<ApiModel>? popular;

  @action
  void setPopular(List<ApiModel> value) => popular = value;

  @observable
  double page = 0;

  @action
  void setPage(double value) => page = value;

  @action
  void startTimer() {
    if (popular != null && popular!.isNotEmpty) {
      Timer.periodic(const Duration(seconds: 5), (timer) {
        if (page < popular!.length - 1) {
          page++;
        } else {
          page = 0;
        }
      });
    }
    Timer.periodic(const Duration(seconds: 10), (timer) {
      if (page == popular!.length - 1) {
        page = 0;
      } else {
        setPage(page++);
      }
    });
  }

  _PageViewPopularStoreBase() {
    autorun((p0) => _service.fetchPopular().then((value) {
          setPopular(value);
          startTimer();
        }));
  }
}
