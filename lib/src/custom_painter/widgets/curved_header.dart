import 'package:flutter/material.dart';

class CurvedHeader extends StatelessWidget {
  const CurvedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _CurvedPainter(),
      ),
    );
  }
}

class _CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff615AAB)
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    final path = Path()
      ..lineTo(0, size.height * 0.25)
      ..quadraticBezierTo(size.width * .5, size.height * .4, size.width,
          size.height * 0.25)
    ..lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
