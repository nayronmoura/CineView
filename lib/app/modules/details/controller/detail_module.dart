
import 'package:filmes_em_cartaz/app/modules/details/view/details_page.dart';
import 'package:flutter_modular/flutter_modular.dart';


import '../store/detail_store.dart';


class DetailModule extends Module {

  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DetailStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => DetailsPage(id: args.data)),
  ];

}