import 'package:appgewaltig/utils/colors.dart';
import 'package:flutter/material.dart';

class NeuMorphWidget extends StatelessWidget {
  final Widget child;
  final double height, width;

  final Color color;
  final BorderRadius borderRadius;
  final List<Shadow> shadows;

  NeuMorphWidget({
    Key key,
    @required this.child,
    this.height,
    this.width,
    this.color,
    this.borderRadius,
    this.shadows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? AppColors.backgroundColor(),
        borderRadius: borderRadius ?? BorderRadius.circular(15.0),
        boxShadow: shadows ?? (AppColors.shadows(3)),
      ),
      child: child,
    );
  }
}
