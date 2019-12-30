import 'package:appgewaltig/utils/neumorph_widget.dart';
import 'package:appgewaltig/utils/responsive_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.grey[200],
        ),
        body: Container(
          child: Center(
            child: Center(
              child: NeuMorphWidget(
                height: 350,
                width: 350,
                borderRadius: BorderRadius.circular(225),
                color: Colors.grey[200],
                child: Center(
                  child: Text(
                    'APPGEWALTIG',
                    style: TextStyle(
                      color: Colors.grey[100],
                      fontSize: 40.0,
                      shadows: [
                        BoxShadow(
                          color: Colors.white70,
                          offset: Offset(-1, -1),
                          blurRadius: 5,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Colors.black87,
                          offset: Offset(1, 1),
                          blurRadius: 5,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
