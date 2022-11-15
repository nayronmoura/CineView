import 'dart:ui';

import 'package:filmes_em_cartaz/app/widgets/page_view_popular_widget/page_view_popular_store.dart';
import 'package:filmes_em_cartaz/app/widgets/popular_widget/popular_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../modules/home/model/api_model.dart';

class PageViewPopularWidget extends StatelessWidget {
  PageViewPopularStore store = Modular.get();

  final PageController _pageController =
      PageController(initialPage: 1, viewportFraction: 0.8);

  PageViewPopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        return PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          itemCount: store.popular.length,
          itemBuilder: (context, index) {
            final animation = lerpDouble(0.8, 1, 1);
            ApiModel film = store.popular[index];
            return Opacity(
              opacity: animation! > 1.0 ? 1.0 : animation,
              child: Transform.scale(
                scale: animation,
                child: GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed('/details/', arguments: film.id);
                  },
                  child: PopularWidget(
                    film: film,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
