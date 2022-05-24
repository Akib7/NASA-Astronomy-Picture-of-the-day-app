import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_api_integration/models/NasaApodModel.dart';

class ResultView extends StatelessWidget {
  const ResultView({
    Key? key,
    required this.result,
  }) : super(key: key);

  final NasaApodModel result;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
          imageUrl: result.hdurl!,
          placeholder: (context, url) => Center(
            child: Lottie.asset('lotties/loading.json', height: 300),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  result.title!,
                  style: TextStyle(
                    fontSize: textTheme.headline4!.fontSize,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: Text(
                  "Date : " + result.date!,
                  style: textTheme.headline6,
                ),
              ),
              Opacity(
                opacity: 0.7,
                child: Text(
                  result.explanation!,
                  textAlign: TextAlign.justify,
                  style: textTheme.headline6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}