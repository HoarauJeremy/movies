import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("Movie Card"),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.asset(
                  "assets/images/monkey.jpg",
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: /* IconButton(
                    onPressed: () => print("Play"),
                    icon: */ Icon(
                    Icons.play_arrow,
                    size: 18,
                    color: Colors.red,
                  ),
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
