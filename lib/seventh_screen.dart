import 'package:api_testing/details_page.dart';
import 'package:api_testing/utils/bottom_navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SeventhScreen extends StatelessWidget {
  const SeventhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const products = [
      [
        "lib/images/polo-shirt.jpg",
        "Blue Color Polo Shirt For Men",
        "\$10.00",
        "Blue color polo shirt for men in half sleeves, stylish in design"
      ],
      [
        "lib/images/polo2.jpg",
        "Olive Color black Polo Shirt For Men",
        "\$12.00",
        "Black color polo shirt for men in half sleeves, stylish in design"
      ],
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: MediaQuery.sizeOf(context).height * 0.13,
        title: Text(
          "BALENCIAGA",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 5),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Icon(
              Icons.search,
              size: 24,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
              ),
              items: const [
                SliderImages(image: "lib/images/banner_1.jpg"),
                SliderImages(image: "lib/images/banner_2.jpg")
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: const [
                  Text(
                    "Balenciaga New Compaign Spring 2022",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8.5,
                  ),
                  Text(
                    "A New installment of Balenciaga's multi-phase compaign photographed by Stef Mitchell will be released in several waves",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryTile(
                      image: "lib/images/sneakers.png",
                      name: "Shoes",
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    CategoryTile(
                      image: "lib/images/t-shirt.png",
                      name: "T-Shirt",
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    CategoryTile(
                      image: "lib/images/woman-bag.png",
                      name: "bags",
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    CategoryTile(
                      image: "lib/images/trouser.png",
                      name: "trousers",
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    CategoryTile(
                      image: "lib/images/casual.png",
                      name: "casual",
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    CategoryTile(
                      image: "lib/images/tie.png",
                      name: "Ties",
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 22,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "SHOP THE COLLECTION",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.sizeOf(context).height * 0.75),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.50),
                  itemBuilder: (context, index) {
                    return ProductTiles(
                        image: products[index][0],
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                      productDetails: products[index])));
                        },
                        price: products[index][2],
                        title: products[index][1]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String image;
  final String name;
  final void Function()? onTap;
  const CategoryTile(
      {super.key,
      required this.image,
      required this.name,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(44)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Image.asset(
                image,
                height: MediaQuery.sizeOf(context).height * 0.05,
                width: MediaQuery.sizeOf(context).width * 0.15,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}

class SliderImages extends StatefulWidget {
  final String image;
  const SliderImages({super.key, required this.image});

  @override
  State<SliderImages> createState() => _SliderImagesState();
}

class _SliderImagesState extends State<SliderImages> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(image: AssetImage(widget.image)),
      ),
    );
  }
}

class ProductTiles extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final double? imageWidth;
  final void Function()? onTap;
  const ProductTiles(
      {super.key,
      required this.image,
      required this.onTap,
      required this.price,
      required this.title,
      this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Image(
                  width: imageWidth ?? MediaQuery.sizeOf(context).width * 0.45,
                  image: AssetImage(image)),
            ),
            SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth:
                      imageWidth ?? MediaQuery.sizeOf(context).width * 0.45),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5),
              ),
            ),
            Text(
              price,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5),
            )
          ],
        ),
      ),
    );
  }
}
