import 'package:custom_painter_app/src/custom_painter/widgets/waved_header.dart';
import 'package:flutter/material.dart';

class CustomPainterView extends StatelessWidget {
  const CustomPainterView({super.key});

  static const routeName = '/custom_painter';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WavedHeader(),
    );
  }
}
