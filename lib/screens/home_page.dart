import 'package:flutter/material.dart';
import 'package:movies/widgets/category_button.dart';
import 'package:movies/widgets/movie_card.dart';
import 'package:movies/widgets/movies_tile.dart';

class HomePage extends StatelessWidget {
  // final String moviePics, synopsys;

  const HomePage({
    super.key /* , required this.moviePics, required this.synopsys */,
  });

  @override
  Widget build(BuildContext context) {
    // var category = ["Tous"];
    List<String> category = ["Tous", "Western", "Horreur", "Comédie", "Action"];

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text(
            "Movies",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 70,
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return CategoryButton(name: category[index]);
                  },
                ),
              ),
            ),

            SizedBox(
              height: 250,
              width: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: MovieCard(),
                  );
                },
              ),
            ),

            SizedBox(
              height: 500,
              width: 500,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MoviesTile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
