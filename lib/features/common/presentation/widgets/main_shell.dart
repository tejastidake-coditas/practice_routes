import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practice_routes/core/constants/color_constants.dart';
import 'package:practice_routes/core/constants/text_constants.dart';
import 'package:practice_routes/core/navigation/app_router.gr.dart';
import 'package:practice_routes/features/common/presentation/widgets/bottom_nav_item.dart';

@RoutePage()
class MainShell extends StatelessWidget {
  const MainShell({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        ProductListScreenRoute(),
        ProfileScreenRoute(),
        AddProductScreenRoute(),
        ChatScreenRoute(),
        FavoriteScreenRoute(),
      ],
      floatingActionButton: Builder(
        builder: (context) {
          final tabsRouter = AutoTabsRouter.of(context);
          return SizedBox( // can use padding instead
            height: 64,
            width: 64,
            child: FloatingActionButton(
              onPressed: () => tabsRouter.setActiveIndex(2),
              backgroundColor: ColorConstants.slidersButtonBackgroundColor,
              elevation: 6,
              shape: const CircleBorder(),
              child: Image.asset(TextConstants.addIcon),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomAppBar(
          color: ColorConstants.slidersButtonBackgroundColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavItem(tabsRouter: tabsRouter, index: 0),
              BottomNavItem(tabsRouter: tabsRouter, index: 1),
              const SizedBox(width: 64), //
              BottomNavItem(tabsRouter: tabsRouter, index: 3),
              BottomNavItem(tabsRouter: tabsRouter, index: 4),
            ],
          ),
        );
      },
    );
  }
}

