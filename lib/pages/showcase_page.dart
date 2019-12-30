import 'package:appgewaltig/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class ShowcasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        color: Colors.grey[200],
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
              color: Colors.grey[200],
              fontWeight: FontWeight.w700,
              fontSize: (ResponsiveWidget.isLargeScreen(context)) ? 64 : 38,
              shadows: [
                BoxShadow(
                  color: Colors.white54,
                  offset: Offset(-1, -1),
                  blurRadius: 4,
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Colors.black45,
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
        )
      ],
    );
  }
}
