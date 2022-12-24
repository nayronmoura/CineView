import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../modules/home/model/api_model.dart';

class FilmWidget extends StatelessWidget {
  ApiModel film;

  FilmWidget({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          CachedNetworkImage(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.2,
            fit: BoxFit.fill,
            imageUrl: "https://image.tmdb.org/t/p/w500${film.pathimg}",
          ),
        ],
      ),
    );
  }
}
