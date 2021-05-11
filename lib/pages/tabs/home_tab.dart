import 'package:disfruta/widgets/custom_headers.dart';
import 'package:disfruta/widgets/product_item_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
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
    return CustomScrollView(
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
          padding: EdgeInsets.only(top: 12, bottom: 62, left: 12, right: 12),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              childAspectRatio: 0.7,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ProductItemCard();
              },
              childCount: 10,
            ),
          ),
        )
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
