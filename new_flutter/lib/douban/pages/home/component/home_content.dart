import 'package:flutter/material.dart';
import 'package:new_flutter/douban/pages/home/cell/movie_cell.dart';
import 'package:new_flutter/douban/request/home_request.dart';
import 'package:new_flutter/douban/pages/home/model/home_model.dart';


class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  final List<MovieItem> movies = [];

  @override
  void initState() {
    super.initState();

    HomeReuqest.requestMovieList(0)
      .then((response) {
        setState(() {
          movies.addAll(response);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (ctx, index) {
        return MovieCell(movies[index]);
      },
    );
  }
}
