import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practice_routes/core/constants/color_constants.dart';

class SpicySlider extends StatefulWidget {
  const SpicySlider({super.key});

  @override
  State<SpicySlider> createState() => _SpicySliderState();
}

class _SpicySliderState extends State<SpicySlider> {
  double _value = Random().nextDouble();

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 6,
      ),
      child: Slider(
        padding: EdgeInsets.zero,
        thumbColor: ColorConstants.sliderThumbColor,
        activeColor: ColorConstants.sliderThumbColor,
        value: _value,
        onChanged: (val) {
          setState(() => _value = val);
        },
      ),
    );
  }
}
