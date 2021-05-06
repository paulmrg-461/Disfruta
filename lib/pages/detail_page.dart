import 'package:disfruta/widgets/custom_button.dart';
import 'package:disfruta/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 18, left: 8, right: 18),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            size: 36,
                            color: Colors.black54,
                          ),
                          onPressed: () => Navigator.pop(context)),
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black12, width: 1.5),
                            borderRadius: BorderRadius.circular(18)),
                        child: IconButton(
                            icon: Icon(
                              Icons.shopping_cart_outlined,
                              size: 26,
                              color: Colors.black54,
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment(1.02, 0),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Color(0xff6D05E8).withOpacity(0.6),
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          '10',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 36),
              child: Image(
                  height: 200,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/mango.png')),
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.35),
                        offset: Offset(0, 1),
                        blurRadius: 10)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pulpa de fruta',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 6.0),
                              child: Text(
                                'Mango',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                            ),
                            CustomRatingBar()
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(18)),
                              child: IconButton(
                                  icon: Icon(
                                    Icons.favorite,
                                    size: 24,
                                    color: Colors.black54,
                                  ),
                                  onPressed: () {}),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '\$',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 6),
                                  child: Text(
                                    '2.500',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '1 unidad - ',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff6D05E8),
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '250gr',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff6D05E8),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(bottom: 12),
                          child: Text(
                            'Descripción:',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: Text(
                            '''
Amet reprehenderit adipisicing culpa eiusmod in adipisicing incididunt exercitation commodo. Sunt non excepteur magna laboris esse consectetur et. Enim do nostrud sint cupidatat proident proident magna culpa non tempor sint. Et nulla do fugiat laborum laborum deserunt consectetur quis eiusmod incididunt velit qui.''',
                            textAlign: TextAlign.left,
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  CustomButton(
                      onPressed: () => print('Hoa amgiuis'),
                      textButton: 'Agregar al carrito')
                ],
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
