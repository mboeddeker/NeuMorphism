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
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 900),
          color: Color(0xFFE0E5Ec),
          child: ListView(
            children: _buildShowCase(context),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildShowCase(BuildContext context) {
    return [
      _buildHeadline(context),
      _buildCircleRow(context),
      SizedBox(height: 50),
      _buildProgressBar(context),
      SizedBox(height: 90),
      _buildCardImage(context),
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
            left: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
            right: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
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

  Widget _buildCircleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _buildRoundMorph(
          context,
          icon: Icon(
            Icons.ac_unit,
            color: Colors.blueGrey,
            size: 50,
          ),
        ),
        _buildRoundMorph(
          context,
          icon: Icon(
            Icons.face,
            color: Colors.green[900],
            size: 50,
          ),
        ),
        _buildRoundMorph(
          context,
          icon: Icon(
            Icons.data_usage,
            color: Colors.red[900],
            size: 50,
          ),
        )
      ],
    );
  }

  Widget _buildRoundMorph(BuildContext context, {@required Icon icon}) {
    return NeuMorphWidget(
      height: 100,
      width: 100,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightBackground,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }

  Widget _buildProgressBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: NeuMorphWidget(
        height: 25,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.lightBackground,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NeuMorphWidget(
                child: Container(
                  width: 250,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCardImage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        NeuMorphWidget(
          height: 280,
          width: 350,
          child: Container(
              decoration: BoxDecoration(
                color: AppColors.lightBackground,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/card-image.jpg',
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ],
    );
  }
}
