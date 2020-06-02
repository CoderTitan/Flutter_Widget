import 'package:flutter/material.dart';

class StartRank extends StatefulWidget {

  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color selectColor;
  final Color unselectColor;
  final Widget selectImage;
  final Widget unselectImage;

  StartRank({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.selectColor = Colors.orange,
    this.unselectColor = Colors.grey,
    Widget selectImage,
    Widget unselectImage
  }): 
    selectImage = selectImage ?? Icon(Icons.star, color: selectColor, size: size),
    unselectImage = unselectImage ??  Icon(Icons.star_border, color: unselectColor, size: size);


  @override
  _StartRankState createState() => _StartRankState();
}

class _StartRankState extends State<StartRank> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: buildUnselectedStar()),
        Row(mainAxisSize: MainAxisSize.min, children: buildSelectedStar()),
      ],
    );
  }

  // 未选中的start
  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectImage;
    });
  }

  // 选中的start
  List<Widget> buildSelectedStar() {
    List<Widget> startList = [];
    final start = widget.selectImage;

    // 完整的start
    final onValue = widget.maxRating / widget.count;
    int minStart = (widget.rating / onValue).floor();
    for (var i = 0; i < minStart; i++) {
      startList.add(start);
    }

    // 不完整的start
    double otherStart = (widget.rating / onValue - minStart) * widget.size;
    final clip = ClipRect(
      clipper: ClipStart(otherStart),
      child: start,
    );
    startList.add(clip);

    if (startList.length > widget.count) {
      return startList.sublist(0, widget.count);
    }

    return startList;
  }

}


/// 自定义剪裁大小和方向
class ClipStart extends CustomClipper<Rect> {
  double width;
  ClipStart(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(ClipStart oldClipper) {
    return oldClipper.width != this.width;
  }
}