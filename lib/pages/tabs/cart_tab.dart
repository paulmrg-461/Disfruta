import 'package:disfruta/widgets/cart_item_card.dart';
import 'package:disfruta/widgets/custom_button.dart';
import 'package:disfruta/widgets/custom_headers.dart';
import 'package:disfruta/widgets/pay_button.dart';
import 'package:flutter/material.dart';

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _MainScroll();
  }
}

class _MainScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double maxHeight = MediaQuery.of(context).size.height * 0.275;
    final double minHeight = MediaQuery.of(context).size.height * 0.24;
    return Stack(
      children: [
        CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverPersistentHeader(
              floating: true,
              delegate: _SliverCustomHeaderDelegate(
                  minHeight: minHeight,
                  maxHeight: maxHeight,
                  child: GradientHeader(
                    title: 'Disfruta',
                    gradientColor1: Color(0xffC012FF),
                    gradientColor2: Color(0xff6D05E8),
                    gradientColor3: Color(0xff6D05FA),
                    headerHeight: maxHeight,
                    fontColor: Colors.white,
                    fontSize: 42.0,
                  )),
            ),
            SliverPadding(
              padding:
                  EdgeInsets.only(top: 12, bottom: 126, left: 12, right: 12),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  childAspectRatio: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return CartItemCard();
                  },
                  childCount: 10,
                ),
              ),
            )
          ],
        ),
        Align(
            alignment: Alignment(0, 1),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 62),
              child: PayButton(
                  onPressed: () => print('Hello amiguis'), textButton: 'Pagar'),
            ))
      ],
    );
  }
}

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverCustomHeaderDelegate(
      {@required this.minHeight,
      @required this.maxHeight,
      @required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent => (minHeight > maxHeight) ? minHeight : maxHeight;

  @override
  double get minExtent => (maxHeight > minHeight) ? minHeight : maxHeight;

  @override
  bool shouldRebuild(_SliverCustomHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        maxHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
