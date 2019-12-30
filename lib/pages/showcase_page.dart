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
              color: Color(0xFFE0E5Ec),
              fontWeight: FontWeight.w700,
              fontSize: (ResponsiveWidget.isLargeScreen(context)) ? 64 : 38,
              shadows: [
                BoxShadow(
                  color: Color(0xFFFFFFFF).withOpacity(0.5),
                  offset: Offset(-1, -1),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0xFFA3B1C6).withOpacity(0.8),
                  offset: Offset(1, 1),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(45),
          child: Text(
            'Neumorphism, one of the biggest UI Trends in 2020. Explore this showcase page, to get a feeling about that topic.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(height: 45),
        NeuMorphWidget(
          height: 200,
          width: 350,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFE0E5Ec),
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
