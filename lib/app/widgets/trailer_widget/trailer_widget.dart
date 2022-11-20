import 'package:filmes_em_cartaz/app/widgets/trailer_widget/trailer_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class TrailerWidget extends StatefulWidget {
  final int id;

  const TrailerWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<TrailerWidget> createState() => _TrailerWidgetState();
}

class _TrailerWidgetState extends State<TrailerWidget> {
  final YoutubePlayerController _controller = YoutubePlayerController();

  late final TrailerStore store;

  @override
  void initState() {
    super.initState();
    store = TrailerStore(id: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      if (store.key != null) {
        _controller.load(
            baseUrl: store.key!,
            params: const YoutubePlayerParams(
                showControls: true, showFullscreenButton: true, loop: true));
      } else {
        return const Center(child: CircularProgressIndicator());
      }
      return YoutubePlayer(
        controller: _controller,
        aspectRatio: 16 / 9,
      );
    });
  }
}
