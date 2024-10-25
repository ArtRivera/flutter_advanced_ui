
import 'package:flutter/material.dart';

class TriangularHeader extends StatelessWidget {
  const TriangularHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _TriangularPainter(),
      ),
    );
  }
}

class _TriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff615AAB)
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    final path = Path()
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}