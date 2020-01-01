import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class HandCourser extends MouseRegion {
  static final appContainer = html.window.document.getElementById('app-container');

  HandCourser({Widget child})
      : super(
          onHover: (PointerHoverEvent event) {
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent event) {
            appContainer.style.cursor = 'default';
          },
          child: child,
        );
}
