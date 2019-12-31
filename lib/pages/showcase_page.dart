import 'package:appgewaltig/utils/colors.dart';
import 'package:appgewaltig/widgets/animated_card.dart';
import 'package:appgewaltig/widgets/neumorph_widget.dart';
import 'package:appgewaltig/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class ShowcasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E5Ec),
      body: Container(
        color: Color(0xFFE0E5Ec),
        child: ListView(
          children: _buildShowCase(context),
        ),
      ),
    );
  }

  List<Widget> _buildShowCase(BuildContext context) {
    return [
      _buildHeadline(context),
    ];
  }

  Widget _buildHeadline(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Text(
            'NeuMorphism',
            style: TextStyle(
              color: AppColors.lightBackground,
              fontWeight: FontWeight.w700,
              fontSize: (ResponsiveWidget.isLargeScreen(context)) ? 64 : 38,
              shadows: AppColors.lightShadows(2),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 64,
            left: ResponsiveWidget.isLargeScreen(context) ? 128 : 16,
            right: ResponsiveWidget.isLargeScreen(context) ? 128 : 16,
          ),
          child: Text(
            'Neumorphism, one of the biggest UI Trends in 2020. Think about soft ui, no hard borders, more like a piece of fabric with some buttons. Or another and better example. Look at the iPad Pro Keyboard. Explore this showcase page, to get a feeling about that topic.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, height: 1.5),
          ),
        ),
        SizedBox(height: 90),
        AnimatedCard(),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
