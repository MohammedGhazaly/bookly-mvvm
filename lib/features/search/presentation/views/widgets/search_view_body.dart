import 'package:bookly_mvvm/core/utils/my_styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/home_view_widgets.dart/best_seller_item.dart';
import 'package:bookly_mvvm/features/search/presentation/views/widgets/custom_search_view_text_field.dart';
import 'package:bookly_mvvm/features/search/presentation/views/widgets/search_resutl_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewbody extends StatelessWidget {
  const SearchViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomSearchViewTextField(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            SliverToBoxAdapter(
              child: Text(
                "Search result",
                style: MyStyles.textStyle18,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            SearchResultListView()
          ],
        ),
      ),
    );
  }
}
