import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmes_em_cartaz/app/modules/details/models/profile_model.dart';
import 'package:filmes_em_cartaz/app/modules/details/store/detail_store.dart';
import 'package:filmes_em_cartaz/app/widgets/profile_template_widget/profile_template_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/sub_title_widget/sub_title_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/title_widget/title_widget.dart';
import 'package:filmes_em_cartaz/app/widgets/trailer_widget/trailer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  final int id;

  const DetailsPage({Key? key, required this.id}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final DetailStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.setId(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
      ),
      body: Container(
        color: const Color.fromRGBO(43, 43, 44, 1),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Observer(
          builder: (_) {
            if (store.profilearray == null) {
              return const Center(child: CircularProgressIndicator());
            }
            List<Widget>? children = [
              CachedNetworkImage(
                imageUrl:
                    'https://image.tmdb.org/t/p/w500${store.detailModel?.backdropPath}',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                errorWidget: (context, url, error) => Icon(
                  Icons.error,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
            ];
            if (store.detailModel!.video) {
              children.add(TrailerWidget(id: widget.id));
            }
            DateTime date = DateTime.parse(store.detailModel!.releaseDate);
            return SingleChildScrollView(
                child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(children: children),
                ),
                Container(
                    color: const Color.fromRGBO(18, 18, 18, 1),
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 10, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleWidget(
                          title: store.detailModel?.title ?? '',
                          textAlign: TextAlign.start,
                        ),
                        SubTitleWidget(
                          title: store.detailModel?.originalTitle ?? '',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.02,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              height: 1.1),
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2,
                          endIndent: MediaQuery.of(context).size.width * 0.5,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.01,
                                      ),
                                      SubTitleWidget(
                                        title: store.detailModel?.voteAverage
                                                .toString() ??
                                            '',
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.calendar_today,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      SubTitleWidget(
                                        title: date.day.toString() +
                                            '/' +
                                            date.month.toString() +
                                            '/' +
                                            date.year.toString(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SubTitleWidget(
                                    title: store.detailModel?.popularity
                                            .toString() ??
                                        '',
                                  ),
                                ],
                              )
                            ])
                      ],
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: store.profilearray!.length,
                      itemBuilder: (_, index) {
                        ProfileModel profile = store.profilearray![index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ProfileTemplateWidget(profileModel: profile),
                        );
                      }),
                ),
                store.detailModel!.overview.isNotEmpty
                    ? Container(
                        color: const Color.fromRGBO(18, 18, 18, 1),
                        child: Column(
                          children: [
                            const Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SubTitleWidget(
                                title: store.detailModel!.overview,
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.025,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    height: 1.1),
                              ),
                            ),
                            const Divider(
                              color: Colors.white,
                              thickness: 2,
                            ),
                          ],
                        ),
                      )
                    : Container()
              ],
            ));
          },
        ),
      ),
    );
  }
}
