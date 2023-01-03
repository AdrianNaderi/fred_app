// import packages
import 'package:auto_route/auto_route.dart';
import "package:flutter/cupertino.dart";
import 'package:fred_app/features/home/screens/widgets/tabs/custom_tabs.dart';
import 'package:fred_app/features/home/screens/widgets/tabs/floating_tab_button.dart';
import 'package:fred_app/globals/constants/dimensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../globals/constants/colors_fonts/colors.dart';
import '../../../route/named_routes.dart';

class MVPHomeScreen extends ConsumerWidget {
  static const routeName = NamedRoutes.toTabs;

  const MVPHomeScreen({Key? key}) : super(key: key);

  static const double tabHeight = 50;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AutoTabsRouter(
          routes: CustomTabs.routes,
          builder: (context, child, animation) {
            final tabsRouter = AutoTabsRouter.of(context);
            return CupertinoTabScaffold(
              // controller: _controller,
              tabBar: CupertinoTabBar(
                height: tabHeight,
                iconSize: 25,
                backgroundColor: CustomColors.secondary,
                activeColor: CustomColors.primary,
                inactiveColor: CustomColors.primary.withOpacity(0.3),
                currentIndex: tabsRouter.activeIndex,
                onTap: (value) => tabsRouter.setActiveIndex(value),
                items: CustomTabs.items,
              ),
              tabBuilder: (context, index) => FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
        ),
        Positioned(bottom: screenHeight * 0.05, child: const TabsAddButton()),
      ],
    );
  }
}
