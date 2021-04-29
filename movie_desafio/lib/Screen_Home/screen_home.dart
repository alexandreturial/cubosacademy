import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_desafio/AppBar/app_bar.dart';
import 'package:movie_desafio/Screen_Home/widgets/ListCategories/list_categories.dart';
import 'package:movie_desafio/Screen_Home/widgets/ListMovies/list_movies.dart';
import 'package:movie_desafio/Screen_Home/widgets/card_movies.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBartWidget(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: DraggableScrollableSheet(
              initialChildSize: 1,
              minChildSize: 1,
              maxChildSize: 1,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  dragStartBehavior: DragStartBehavior.start,
                  child: Column(
                    children: [
                      ListMovies(),
                      ListCategories()
                    ],
                  ),
                );
              }),
        ));
  }
}
