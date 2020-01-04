import 'package:appgewaltig/utils/colors.dart';
import 'package:appgewaltig/widgets/hand_courser.dart';
import 'package:appgewaltig/widgets/neumorph_widget.dart';
import 'package:flutter/material.dart';

class AnimatedCard extends StatefulWidget {
  @override
  _AnimatedCardState createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(duration: Duration(seconds: 4), vsync: this);
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

    _animationController.addListener(() => setState(() {}));
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return NeuMorphWidget(
      height: 200,
      width: 350,
      shadows: AppColors.lightShadows(3, opacity: _animation.value),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightBackground,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
