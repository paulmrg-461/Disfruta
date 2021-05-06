import 'package:disfruta/widgets/custom_headers.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _MainScroll();
  }
}

class _MainScroll extends StatelessWidget {
  final items = [
    _ListItem('Deep Purple', Colors.deepPurple),
    _ListItem('Deep Orange', Colors.deepOrange),
    _ListItem('Teal', Colors.teal),
    _ListItem('Amber', Colors.amber),
    _ListItem('Cyan', Colors.cyan),
    _ListItem('Red', Colors.red),
    _ListItem('Blue', Colors.blue),
    _ListItem('Pink', Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    final double maxHeight = MediaQuery.of(context).size.height * 0.275;
    final double minHeight = MediaQuery.of(context).size.height * 0.24;
    return CustomScrollView(
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
        SliverList(
          delegate: SliverChildListDelegate([
            ...items,
            SizedBox(
              height: 100.0,
            )
          ]),
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

/* class _ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) => items[index],
    );
  }
} */

class _ListItem extends StatelessWidget {
  final String title;
  final Color color;
  _ListItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        this.title,
        style: TextStyle(
            fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: EdgeInsets.all(22.0),
      decoration: BoxDecoration(
          color: this.color, borderRadius: BorderRadius.circular(22.0)),
    );
  }
}
