import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodItemDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Color(0xfffbb613),
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                'lib/images/advertisement.jpg',
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).width,
                fit: BoxFit.fill,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    // gradient: LinearGradient(
                    //     colors: [Colors.black, Colors.transparent, Colors.black],
                    //     begin: Alignment.topCenter,
                    //     end: Alignment.bottomCenter),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Stack(children: [
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).width - 90,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 35,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "Trending Now",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      CardWidget(
                                          image:
                                              "https://cdn.dummyjson.com/recipe-images/9.webp",
                                          title: "Caprese Salad",
                                          ingredients: "4 Ingredients"),
                                      CardWidget(
                                          image:
                                              "https://cdn.dummyjson.com/recipe-images/3.webp",
                                          title: "Chocolate Cookies",
                                          ingredients: "4 Ingredients"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    "New Releases",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      CardWidget(
                                          image:
                                              "https://cdn.dummyjson.com/recipe-images/7.webp",
                                          title: "Italian",
                                          ingredients: "6 Ingredients"),
                                      CardWidget(
                                          image:
                                              "https://cdn.dummyjson.com/recipe-images/4.webp",
                                          title: "Pasta",
                                          ingredients: "2 Ingredients"),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ]),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String ingredients;
  const CardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            height: MediaQuery.sizeOf(context).height * 0.21,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              ingredients,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
