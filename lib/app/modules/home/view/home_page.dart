import 'package:filmes_em_cartaz/app/modules/home/store/home_store.dart';
import 'package:filmes_em_cartaz/app/widgets/background_painter/BackgroundPainter.dart';
import 'package:filmes_em_cartaz/app/widgets/page_view_popular_widget/page_view_popular_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/page_view_template_widget/page_view_template_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/shimmer_template_widget/shimmer_template_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  final HomeStore store;

  const HomePage({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                size: MediaQuery.of(context).size.width * 0.05,
              ),
              onPressed: () {
                Modular.to.pushNamed('/search/');
              },
            ),
          ]),
      body: CustomPaint(
        painter: BackgroundPainter(),
        child: SingleChildScrollView(
          child: Observer(
            builder: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: PageViewPopularWidget()),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: PageViewTemplateWidget(
                    title: 'Melhor Avaliados',
                    films: store.listTopRated ?? [],
                    shimmerFilms: store.listTopRated == null
                        ? const [
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                          ]
                        : null,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: PageViewTemplateWidget(
                    title: 'Em Breve',
                    films: store.listUpComing ?? [],
                    shimmerFilms: store.listUpComing == null
                        ? const [
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                          ]
                        : null,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: PageViewTemplateWidget(
                    title: 'Em Cartaz',
                    films: store.listPlayingNow ?? [],
                    shimmerFilms: store.listPlayingNow == null
                        ? const [
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                            ShimmerTemplateWidget(),
                          ]
                        : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
