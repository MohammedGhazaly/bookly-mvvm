import 'package:bookly_mvvm/features/home/presentation/views/widgets/home_view_widgets.dart/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomBookImage(
                  bookImage:
                      "https://m.media-amazon.com/images/I/81E9oNSK3bL._AC_UF1000,1000_QL80_.jpg"),
            );
          }),
    );
  }
}
