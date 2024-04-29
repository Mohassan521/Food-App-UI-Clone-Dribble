import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeae1d6),
      appBar: AppBar(
        backgroundColor: Color(0xffeae1d6),
        title: const Text("Third Screen"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.transparent)),
                    hintText: 'What do you want to eat?',
                  ),
                )),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: const Text(
                "Search by Ingredients",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  IngredientTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/2.webp",
                    title: "Vegetable",
                    onTap: () {},
                  ),
                  IngredientTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/3.webp",
                    title: "Cookies",
                    onTap: () {},
                  ),
                  IngredientTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/4.webp",
                    title: "Pasta",
                    onTap: () {},
                  ),
                  IngredientTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/6.webp",
                    title: "Salad",
                    onTap: () {},
                  ),
                  IngredientTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/7.webp",
                    title: "Italian",
                    onTap: () {},
                  ),
                  IngredientTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/8.webp",
                    title: "Asian",
                    onTap: () {},
                  ),
                  IngredientTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/11.webp",
                    title: "Biryani",
                    onTap: () {},
                  ),
                  IngredientTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/12.webp",
                    title: "Pakistani",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Preferences?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  Text(
                    "VIEW ALL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PreferenceTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/9.webp",
                    text: "Caprese Salad",
                  ),
                  PreferenceTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/14.webp",
                    text: "Chapli Kebabs",
                  ),
                  PreferenceTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/1.webp",
                    text: " Margherita Pizza",
                  ),
                  PreferenceTiles(
                    image: "https://cdn.dummyjson.com/recipe-images/3.webp",
                    text: "Chocolate Cookies",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Time?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TimeTiles(
                    timeline: "Under 15 minutes",
                    onTap: () {},
                  ),
                  TimeTiles(timeline: "Under 30 minutes", onTap: () {}),
                  TimeTiles(timeline: "More than 30 minutes", onTap: () {}),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Recipe Tags?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeTiles(timeline: "Pakistani", onTap: () {}),
                TimeTiles(timeline: "Italian", onTap: () {}),
                TimeTiles(timeline: "Turkish", onTap: () {}),
                TimeTiles(timeline: "Japanese", onTap: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeTiles(timeline: "Thai", onTap: () {}),
                TimeTiles(timeline: "Moroccan", onTap: () {}),
                TimeTiles(timeline: "Korean", onTap: () {}),
                TimeTiles(timeline: "Greek", onTap: () {}),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class TimeTiles extends StatelessWidget {
  final String timeline;
  final void Function() onTap;
  const TimeTiles({super.key, required this.timeline, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.only(left: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
          child: Text(
            timeline,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class PreferenceTiles extends StatelessWidget {
  final String image;
  final String text;
  const PreferenceTiles({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          elevation: 1,
          margin: const EdgeInsets.only(
              left: 10, right: 10), // Adjust margin for spacing
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image(
                  width: MediaQuery.sizeOf(context).width *
                      0.55, // Set a fixed width for each card (adjust as needed)
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Add more PreferenceTiles widgets here for additional products
      ],
    );
  }
}

class IngredientTiles extends StatelessWidget {
  final String image;
  final String title;
  final void Function() onTap;
  const IngredientTiles(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Card(
              margin: const EdgeInsets.all(10),
              elevation: 1,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                    height: MediaQuery.sizeOf(context).height * 0.075,
                    image: NetworkImage(image)),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
