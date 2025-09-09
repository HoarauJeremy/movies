import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key /* , required this.title */});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Container(
            width: 500,
            decoration: BoxDecoration(color: Colors.amberAccent),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => "",
                      child: Text(
                        "Tous",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => "",
                      child: Text(
                        "Western",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => "",
                      child: Text(
                        "Horreur",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () => "",
                      child: Text(
                        "Comédie",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 250,
            width: 500,
            child: Stack(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                      horizontal: 15.0,
                    ),
                    child: Image.asset(
                      "assets/images/monkey.jpg",
                      width: 500,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 25,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () => print("Play"),
                      icon: Icon(Icons.play_arrow, size: 35, color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 500,
            width: 500,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                "assets/images/monkey2.jpg",
                                height: 100,
                                width: 100,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
