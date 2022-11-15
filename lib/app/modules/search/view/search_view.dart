import 'package:filmes_em_cartaz/app/modules/search/store/search_store.dart';
import 'package:filmes_em_cartaz/app/widgets/background_painter/BackgroundPainter.dart';
import 'package:filmes_em_cartaz/app/widgets/search_template_widget/search_template_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/title_widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  SearchStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
          title: TextField(
            autofocus: true,
            decoration: const InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
            ),
            style: const TextStyle(color: Colors.white),
            onChanged: (value) {
              if (value.isNotEmpty) {
                store.setSearch(value);
              }
            },
          ),
        ),
        body: Container(
          color: const Color.fromRGBO(43, 43, 44, 1),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Observer(builder: (_) {
            if (store.loading) {
              const Center(child: CircularProgressIndicator());
            } else if(store.searchList.isNotEmpty) {
              return ListView.builder(
                itemCount: store.searchList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: GestureDetector(
                      onTap: () {
                        Modular.to.pushNamed('/details/',
                            arguments: store.searchList[index].id);
                      },
                      child: SearchTemplateWidget(
                          apiModel: store.searchList[index]),
                    ),
                  );
                },
              );
            }else{
              return Center(child: TitleWidget(title: 'Nenhum resultado encontrado'));
            }
            return Container();
          }),
        ));
  }
}
