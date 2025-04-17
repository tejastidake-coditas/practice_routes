import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practice_routes/core/constants/text_constants.dart';

@RoutePage()
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConstants.favorites),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(TextConstants.favoriteScreen),
          ],
        ),
      ),
    );
  }
}
