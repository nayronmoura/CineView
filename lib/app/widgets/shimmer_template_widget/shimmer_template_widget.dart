import 'package:filmes_em_cartaz/app/widgets/title_widget/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerTemplateWidget extends StatelessWidget {
  const ShimmerTemplateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          Shimmer.fromColors(
              child: Center(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.4,
                      maxHeight: MediaQuery.of(context).size.height * 0.2),
                  color: Colors.white,
                ),
              ),
              baseColor: Colors.grey[50]!,
              highlightColor: Colors.grey[300]!),
        ],
      ),
    );
  }
}
