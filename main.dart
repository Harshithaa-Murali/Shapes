import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawing Paths',
      home: Container(
        color: Colors.white,
        child: CustomPaint(
            painter: CurvePainter(),
          ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    var paint = Paint();
    paint.color = Colors.green;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(299, 160);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.10,
        size.width * 0.50, size.height * 0.16);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.25,
        299, 160);
    //path.lineTo(size.width, size.height);
    path.moveTo(500,500);
    path.lineTo(500, 600);
    path.lineTo(550,620);


    var paint1 = Paint()
      ..color = Color(0xffaa44aa)
      ..style = PaintingStyle.fill;
      //paint1.strokeWidth = 10;
    var paint2 = Paint()
      ..color = Colors.brown
      ..style = PaintingStyle.fill;
    var paint3 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    canvas.drawCircle(Offset(200, 200), 50, paint1);
    canvas.drawCircle(Offset(300, 200), 50, paint1);
    canvas.drawCircle(Offset(400, 200), 50, paint1);
    canvas.drawCircle(Offset(250, 285), 50, paint1);
    canvas.drawCircle(Offset(350, 285), 50, paint1);
    canvas.drawCircle(Offset(300, 370), 50, paint1);
    canvas.drawRect(Offset(150, 130) & const Size(300,20), paint2);
    canvas.drawRect(Offset(280, 80) & const Size(30,50), paint2);
    canvas.drawPath(path, paint);
    canvas.drawLine(Offset(650,160), Offset(470,160), paint3);


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}