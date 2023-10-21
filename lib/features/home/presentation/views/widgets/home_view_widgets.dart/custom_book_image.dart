import 'package:bookly_mvvm/core/utils/my_assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String bookImage;
  const CustomBookImage({super.key, required this.bookImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: CachedNetworkImage(
            imageUrl: bookImage,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
          ),
        ),
      ),
    );
  }
}
