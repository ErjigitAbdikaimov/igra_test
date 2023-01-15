import 'package:flutter/material.dart';
import 'package:igra_test/constanta/app_colors.dart';

class Slider_widget extends StatelessWidget {
  const Slider_widget({
    Key? key,
    required this.value,
  }) : super(key: key);
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SliderTheme(
        data: SliderThemeData(
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
        ),
        child: Slider(
          activeColor: Appcolors.active,
          inactiveColor: Appcolors.inactive,
          value: value.toDouble(),
          max: 6,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
