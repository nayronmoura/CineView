import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmes_em_cartaz/app/modules/details/models/profile_model.dart';
import 'package:filmes_em_cartaz/app/widgets/sub_title_widget/sub_title_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/title_widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTemplateWidget extends StatelessWidget {
  final ProfileModel profileModel;

  const ProfileTemplateWidget({Key? key, required this.profileModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          CachedNetworkImage(
            width: MediaQuery.of(context).size.width * 0.25,
            height: MediaQuery.of(context).size.height * 0.25,
            fit: BoxFit.cover,
            imageUrl:
                "https://image.tmdb.org/t/p/w500${profileModel.profilepath}",
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
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          TitleWidget(
            title: profileModel.name.split(' ').length > 1
                ? '${profileModel.name.split(' ')[0]} ${profileModel.name.split(' ')[1]}'
                : profileModel.name,
            style: GoogleFonts.inter(
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.1),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          SubTitleWidget(
            title: profileModel.character,
            style: GoogleFonts.inter(
                fontSize: MediaQuery.of(context).size.width * 0.03,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                height: 1.1),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          SubTitleWidget(
            title: profileModel.departament,
            style: GoogleFonts.inter(
                fontSize: MediaQuery.of(context).size.width * 0.02,
                fontWeight: FontWeight.w300,
                color: Colors.white,
                height: 1.1),
          ),
        ],
      ),
    );
  }
}
