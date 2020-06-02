import 'package:flutter/material.dart';
import 'package:new_flutter/douban/pages/home/model/home_model.dart';
import 'package:new_flutter/douban/component/start_rank.dart';
import 'package:new_flutter/douban/component/dashed_line.dart';

class MovieCell extends StatelessWidget {

  final MovieItem model;

  MovieCell(this.model);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 8)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            bundleRank(),
            SizedBox(height: 8),
            bundleContent(),
            SizedBox(height: 8),
            bundleBottom()
          ],
        ),
      ),
    );
  }

  // 等级部分
  Widget bundleRank() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.all(Radius.circular(3))
      ),
      child: Text("NO.${model.rank}", style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 131, 95, 36)),),
    );
  }

  // 中间的内容部分
  Widget bundleContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildHeaderImage(),
        SizedBox(width: 8),
        bundleMoviewInfo(),
        SizedBox(width: 8),
        buildDashLine(),
        SizedBox(width: 8),
        bundleLook()
      ],
    );
  }

  Widget buildHeaderImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.network(model.imageURL, height: 150),
    );
  }

  // 中间的显示的电影信息
  Widget bundleMoviewInfo() {
    // 1.字符串拼接
    final genresString = model.genres.join(" ");
    final directorString = model.director.name;
    List<Actor> casts = model.casts;
    final actorString = model.casts.map((item) => item.name).join(" ");

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildTitle(),
          SizedBox(height: 8),
          StartRank(rating: model.rating, size: 20,),
          SizedBox(height: 8),
          Text(
            "$genresString / $directorString / $actorString",
            style: TextStyle(fontSize: 15, color: Colors.black45),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
            child: Icon(Icons.play_circle_outline, color: Colors.red, size: 30,),
            alignment: PlaceholderAlignment.middle
          ),
          WidgetSpan(
            child: Text(model.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), 
            alignment: PlaceholderAlignment.middle
          ),
          WidgetSpan(
            child: Text('(${model.playDate})', style: TextStyle(fontSize: 14, color: Colors.grey)), 
            alignment: PlaceholderAlignment.middle
          ),
        ]
      )
    );
  }

  // 虚线部分
  Widget buildDashLine() {
    return Container(
      height: 100,
      child: DashedLine(
        axis: Axis.vertical,
        width: 0.5,
        height: 3,
        color: Colors.green,
        count: 20,
      ),
    );
  }

  // 想看部分
  Widget bundleLook() {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.linked_camera, color: Colors.orange, size: 50,),
          Text('想看', style: TextStyle(fontSize: 18, color: Colors.orange),),
        ],
      ),
    );
  }

  Widget bundleBottom() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(4)
      ),
      child: Text(model.originalTitle, style: TextStyle(fontSize: 16, color: Color(0xff666666)), maxLines: 10,),
    );
  }
}