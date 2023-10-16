import 'package:bookly_mvvm/features/home/presentation/views/widgets/home_view_widgets.dart/best_seller_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return BookListViewItem();
    }, childCount: 10));
  }
}
