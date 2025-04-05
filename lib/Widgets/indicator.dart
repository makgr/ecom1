import 'package:flutter/material.dart';


class Indicator extends StatelessWidget {
  Indicator({
    super.key,
    required this.controller,
    this.itemCount = 0,
  });

  /// PageView Controller
  final PageController controller;

  /// Number of indicators
  final int itemCount;

  /// Ordinary colours
  Color normalColor = const Color(0x8cffffff);

  /// Selected color
  final Color selectedColor = Colors.white;

  /// Size of points
  final double size = 7.0;

  /// Spacing of points
  final double spacing = 2.0;

  /// Point Widget
  Widget _buildIndicator(
      int index, int pageCount, double dotSize, double spacing) {
    // Is the current page selected?
    bool isCurrentPageSelected = index ==
        (controller.page != null ? controller.page!.round() % pageCount : 0);

    return SizedBox(
      height: size,
      width: size + (3 * spacing),
      child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: isCurrentPageSelected ? selectedColor : normalColor,
          type: MaterialType.canvas,
          child: SizedBox(
            width: 7,
            height: dotSize,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, (int index) {
        return _buildIndicator(index, itemCount, size, spacing);
      }),
    );
  }
}
