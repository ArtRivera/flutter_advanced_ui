import 'package:flutter/widgets.dart';

class WavedHeader extends StatelessWidget {
  const WavedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _WavedPainter(),
      ),
    );
  }
}

class _WavedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff615AAB)
      ..style = PaintingStyle.fill
      ..strokeWidth = 5;

    final path = Path()
      ..lineTo(0, size.height * 0.25)
      ..quadraticBezierTo(size.width * .25, size.height * .30, size.width * .5,
          size.height * 0.25)
      ..quadraticBezierTo(
          size.width * .75, size.height * .20, size.width, size.height * 0.25)
      ..lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
