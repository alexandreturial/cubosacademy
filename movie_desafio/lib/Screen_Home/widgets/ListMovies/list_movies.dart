import 'package:flutter/material.dart';
import 'package:movie_desafio/Screen_Home/widgets/card_movies.dart';

class ListMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("recent"),
          Container(
            height: 450,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CardMovie();
                }),
          ),
        ],
      ),
    );
  }
}
