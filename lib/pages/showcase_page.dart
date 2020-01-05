import 'package:appgewaltig/utils/colors.dart';
import 'package:appgewaltig/widgets/animated_card.dart';
import 'package:appgewaltig/widgets/neumorph_widget.dart';
import 'package:appgewaltig/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class ShowcasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            'NeuMorphism',
            style: TextStyle(
              color: AppColors.backgroundColor(),
              fontWeight: FontWeight.w700,
              fontSize: (ResponsiveWidget.isLargeScreen(context)) ? 56 : 38,
              shadows: AppColors.shadows(2),
            ),
          ),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: NeuMorphWidget(
                  height: 24,
                  width: 24,
                  borderRadius: BorderRadius.circular(12),
                  shadows: AppColors.shadows(1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor(),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16)
            ],
          )
        ],
      ),
      backgroundColor: AppColors.backgroundColor(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 900),
          color: AppColors.backgroundColor(),
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
      SizedBox(height: 90),
      _buildMobileLayout(context),
      SizedBox(height: 180),
    ];
  }

  Widget _buildHeadline(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
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
        Padding(
          padding: EdgeInsets.only(
            top: 8,
            bottom: 90,
            left: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
            right: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
          ),
          child: Text(
            'As you can see, this elements comes up from nothing. With Neumorphism, we can imagine new ways of userinteraction. Elements appear like a piece of paper.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, height: 1.5),
          ),
        ),
      ],
    );
  }

  Widget _buildCircleRow(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: 8,
            bottom: 90,
            left: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
            right: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
          ),
          child: Text(
            'We can use this, for elements like buttons, progress bars, lists, menus and so on. I do not show everything here in the demo (not now), but with this design system, we create a feeling of real touch on a canvas.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, height: 1.5),
          ),
        ),
        Row(
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
        ),
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
          color: AppColors.backgroundColor(),
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
      padding: EdgeInsets.only(
          left: ResponsiveWidget.isLargeScreen(context) ? 64 : 32,
          right: ResponsiveWidget.isLargeScreen(context) ? 64 : 32),
      child: NeuMorphWidget(
        height: 25,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundColor(),
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
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: 8,
            bottom: 90,
            left: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
            right: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
          ),
          child: Text(
            'Another great example is that image. You can use it in card elements also. Everything is possible.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, height: 1.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            spacing: 16,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NeuMorphWidget(
                    height: 280,
                    width: 350,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor(),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/card-image.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            top: 8,
            bottom: 90,
            left: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
            right: ResponsiveWidget.isLargeScreen(context) ? 80 : 16,
          ),
          child: Text(
            'And why not a complete mobile layout in Neumorphism ? With this example, you get a feeling for this. ',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, height: 1.5),
          ),
        ),
        NeuMorphWidget(
          width: 350,
          height: 600,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor(),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: NeuMorphWidget(
                      width: 300,
                      height: 45,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.backgroundColor(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: NeuMorphWidget(
                      width: 300,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.backgroundColor(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        NeuMorphWidget(
                          width: 85,
                          height: 90,
                          child: Container(
                              decoration: BoxDecoration(
                            color: AppColors.backgroundColor(),
                            borderRadius: BorderRadius.circular(15),
                          )),
                        ),
                        NeuMorphWidget(
                          width: 85,
                          height: 90,
                          child: Container(
                              decoration: BoxDecoration(
                            color: AppColors.backgroundColor(),
                            borderRadius: BorderRadius.circular(15),
                          )),
                        ),
                        NeuMorphWidget(
                          width: 85,
                          height: 90,
                          child: Container(
                              decoration: BoxDecoration(
                            color: AppColors.backgroundColor(),
                            borderRadius: BorderRadius.circular(15),
                          )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
                    child: NeuMorphWidget(
                      width: 300,
                      height: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.backgroundColor(),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        NeuMorphWidget(
                          width: 100,
                          height: 130,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor(),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        NeuMorphWidget(
                          width: 100,
                          height: 130,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor(),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: NeuMorphWidget(
                  width: 350,
                  height: 60,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        NeuMorphWidget(
                          width: 48,
                          height: 48,
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor(),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        NeuMorphWidget(
                          width: 48,
                          height: 48,
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor(),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        NeuMorphWidget(
                          width: 48,
                          height: 48,
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor(),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                        NeuMorphWidget(
                          width: 48,
                          height: 48,
                          borderRadius: BorderRadius.circular(24),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor(),
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
