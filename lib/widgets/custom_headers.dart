import 'package:flutter/material.dart';

class GradientWaveHeader extends StatelessWidget {
  final double height;
  final double width;
  const GradientWaveHeader(
      {Key key, this.height = 600, this.width = double.infinity})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: Stack(
        children: [
          Container(
            height: height,
            width: double.infinity,
            //color: Color(0xff615AAB),
            child: CustomPaint(
              painter: _GradientWaveHeaderPainter(),
            ),
          ),
          Center(
            child: Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10,
                    offset: Offset(0.7, 0.7))
              ], borderRadius: BorderRadius.circular(26), color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _GradientWaveHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        new Rect.fromCircle(center: Offset(150.0, 250.0), radius: 90.0);

    final Gradient gradient = new LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
          Color(0xffC012FF),
          Color(0xff6D05E8),
          Color(0xff6D05FA),
        ],
        stops: [
          0.0,
          0.6,
          0.9
        ]);

    final paint = Paint()..shader = gradient.createShader(rect);
    //Properties
    paint.color = Color(0xff615AAB);
    paint.style = PaintingStyle.fill;

    final path = Path();
    //Draw with the path and paint
    path.lineTo(0, size.height * 0.95);
    path.quadraticBezierTo(size.width * 0.25, size.height * 1.15,
        size.width * 0.5, size.height * 0.95);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.75, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    //path.lineTo(size.width, size.height * 0.3);
    canvas.drawShadow(path, Colors.grey[900], 3.0, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
