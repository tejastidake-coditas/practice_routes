import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practice_routes/core/constants/text_constants.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TextConstants.chat),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(TextConstants.chatScreen),
          ],
        ),
      ),
    );
  }
}
