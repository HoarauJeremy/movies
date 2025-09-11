import 'package:flutter/material.dart';

class MoviesTile extends StatelessWidget {
  // final String link, synopsys, imageLink;

  const MoviesTile({
    super.key /* , required this.link, required this.synopsys, required this.imageLink */,
  });

  @override
  Widget build(BuildContext context) {
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
                    // imageLink,
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
                // synopsys
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
