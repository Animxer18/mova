import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/app_theme.dart';
class MovieListTitle extends StatelessWidget {
  String title;
  MovieListTitle({
    super.key,
    required this.theme,
    required this.title,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding:  EdgeInsets.all(24.w),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: [
            Text(
              title,
              style: theme.textTheme.headlineSmall!.copyWith(
                  color: AppFontColorBuilder.getGrey900AndWhite(context)),
            ),
            const Spacer(),
            Text(
              'See all',
              style: theme.textTheme.bodyMedium!.copyWith(
                color: theme.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}