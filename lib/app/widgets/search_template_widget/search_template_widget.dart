import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmes_em_cartaz/app/modules/home/model/api_model.dart';
import 'package:filmes_em_cartaz/app/widgets/sub_title_widget/sub_title_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/title_widget/title_widget.dart';
import 'package:flutter/material.dart';

class SearchTemplateWidget extends StatelessWidget {
  ApiModel apiModel;

  SearchTemplateWidget({Key? key, required this.apiModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Row(
          children: [
            CachedNetworkImage(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                imageUrl:"https://image.tmdb.org/t/p/w500${apiModel.pathimg}",
              errorWidget: (context, url, error) => const Icon(Icons.error,color: Colors.white,),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleWidget(title:apiModel.title, textAlign: TextAlign.start),
                  SubTitleWidget(title:apiModel.data, textAlign: TextAlign.start),
                  Divider(
                    color: Colors.white,
                    height: 20,
                    endIndent: MediaQuery.of(context).size.width * 0.2,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
