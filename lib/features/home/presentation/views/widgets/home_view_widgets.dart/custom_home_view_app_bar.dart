import 'package:bookly_mvvm/core/utils/my_assets.dart';
import 'package:bookly_mvvm/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          MyAssets.kLogo,
          height: 20.h,
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(MyRouters.kSearchViewRoute);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
          ),
          iconSize: 26.sp,
        )
      ],
    );
  }
}
