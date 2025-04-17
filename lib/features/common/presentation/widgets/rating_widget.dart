import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practice_routes/core/constants/text_constants.dart';
import 'package:practice_routes/core/constants/style_constants.dart';

class RatingWidget extends StatelessWidget {
  final String screen;

  const RatingWidget({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          TextConstants.starIcon,
          width: 15,
          height: 15,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 4),
        Text(
          TextConstants.ratingText,
          style: (screen == TextConstants.listing) ? StyleConstants.listingRatingStyle : StyleConstants.deatilsRatingStyle,
        )
      ],
    );
  }
}
