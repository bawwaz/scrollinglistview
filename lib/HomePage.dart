import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(
            "Kontol",
            style: TextStyle(
              color: const Color.fromARGB(255, 111, 234, 115),
            ),
          )
        ],
        leading: Icon(
          Icons.shopify,
          color: const Color.fromARGB(255, 111, 234, 115),
          size: 34,
        ),
        title: Text(
          "Sneaker shop",
          style: TextStyle(
            color: const Color.fromARGB(255, 111, 234, 115),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 6, 41, 58),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.start, // Change to MainAxisAlignment.start
          crossAxisAlignment: CrossAxisAlignment.stretch, // Added this line
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 100,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text("Card $index"),
                    ),
                    color: Color.fromARGB(255, 40, 44, 73),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                  title: Text("List $index"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: HomePage()));
}
