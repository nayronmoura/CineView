import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmes_em_cartaz/app/modules/home/model/api_model.dart';
import 'package:filmes_em_cartaz/app/widgets/title_widget/title_widget.dart';
import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  ApiModel film;

  PopularWidget({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: "https://image.tmdb.org/t/p/w500${film.pathbanner}",
            errorWidget: (context, url, error) => Icon(
              Icons.error,
              color: Colors.white,
              size: MediaQuery.of(context).size.width * 0.05,
            ),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child: CircularProgressIndicator(
                color: Colors.white,
                value: downloadProgress.progress,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TitleWidget(
              title: film.title)
        ],
      ),
    );
  }
}
