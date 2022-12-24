import 'package:filmes_em_cartaz/app/modules/home/model/api_model.dart';
import 'package:filmes_em_cartaz/app/widgets/film_widget/film_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/shimmer_template_widget/shimmer_template_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/title_widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';


class PageViewTemplateWidget extends StatelessWidget {
  final String title;
  final List<ApiModel> films;
  final List<ShimmerTemplateWidget>? shimmerFilms;

  const PageViewTemplateWidget({
    Key? key, required this.title, required this.films, this.shimmerFilms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(title: title),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: shimmerFilms== null? ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: films.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    Modular.to
                        .pushNamed('/details/', arguments: films[index].id);
                  },
                  child: FilmWidget(
                    film: films[index],
                  ),
                ),
              );
            },
          ): ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: shimmerFilms!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: shimmerFilms![index],
              );
            },
          ),
        )
      ],
    );
  }
}
