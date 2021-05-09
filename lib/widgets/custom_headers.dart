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
              width: this.height * 0.55,
              height: this.height * 0.55,
              margin: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5,
                    offset: Offset(0.7, 0.7))
              ], borderRadius: BorderRadius.circular(26), color: Colors.white),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image(
                          height: this.height * 0.35,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/mango.png')),
                      Text(
                        'Disfruta',
                        style: TextStyle(
                            color: Color(0xff6D05E8),
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
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

class GradientHeader extends StatelessWidget {
  final String title;
  final double headerHeight;
  final Color fontColor;
  final double fontSize;
  final Color gradientColor1;
  final Color gradientColor2;
  final Color gradientColor3;

  GradientHeader({
    @required this.title,
    this.headerHeight = 300.0,
    this.fontColor = Colors.white,
    this.fontSize = 36.0,
    this.gradientColor1 = Colors.deepPurple,
    this.gradientColor2 = Colors.purple,
    this.gradientColor3 = Colors.purpleAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: this.headerHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                this.gradientColor1,
                this.gradientColor2,
                this.gradientColor3
              ],
              begin: Alignment(0.1, -1.5),
              stops: [0.0, 0.6, 1.0]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                this.title,
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: this.fontSize,
                    color: this.fontColor,
                    fontWeight: FontWeight.w900),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(14)),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Buscar',
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
