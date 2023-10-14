import 'package:bookly_mvvm/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                MyAssets.kTestImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
