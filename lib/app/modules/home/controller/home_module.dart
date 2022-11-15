import 'package:filmes_em_cartaz/app/modules/home/store/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../widgets/page_view_popular_widget/page_view_popular_store.dart';

import '../view/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => PageViewPopularStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => HomePage(store: Modular.get())),
  ];
}
