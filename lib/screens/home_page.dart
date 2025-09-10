import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // final String moviePics, synopsys;

  const HomePage({
    super.key /* , required this.moviePics, required this.synopsys */,
  });

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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              //CARD avec elevation 5
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
                      TextButton(
                        onPressed: () => "",
                        child: Text(
                          "Action",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 250,
              width: 500,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 500,
              width: 500,
              child: ListView.builder(
                itemCount: 5,
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
      ),
    );
  }
}
