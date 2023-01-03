import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/dimensions.dart';
import '../../../../../../globals/widgets/buttons/customBackButton.dart';
import 'explore_detail_header_background.dart';
import 'explore_detail_header_content.dart';

class MVPExploreDetailHeader extends ConsumerWidget {
  final String id;
  const MVPExploreDetailHeader({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const MVPExploreDetailHeaderBackground(),
        Positioned(
          top: 40,
          bottom: 0,
          child: MVPExploreDetailHeaderContent(id: id),
        ),
        //back button
        Positioned(
          top: appPadding * 3,
          left: appPadding,
          child: CustomBackButton(
            function: () => context.router.pop(),
          ),
        ),
        //profile
        Positioned(
            top: appPadding * 3,
            right: appPadding,
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                "assets/images/profile/profile.png",
              ),
            ))
      ],
    );
  }
}
