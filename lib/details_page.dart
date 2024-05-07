import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsPage extends StatefulWidget {
  final List productDetails;
  const DetailsPage({super.key, required this.productDetails});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    List productDetails = widget.productDetails;

    String imageUrl = productDetails[0];
    String title = productDetails[1];
    String price = productDetails[2];
    String description = productDetails[3];

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: Image(image: AssetImage(imageUrl)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 26.5, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Styled with stripes on both sleeves with a color contrast",
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                price,
                style: TextStyle(fontSize: 26.5, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            ExpansionTile(
              trailing: Icon(_expanded == true ? Icons.remove : Icons.add),
              title: Text(
                "Product Description",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.sizeOf(context).width * 0.9),
                              child: Text("• $description")),
                          Text("• Cotton Fabric, best for all seasons"),
                          Text("• stylish in design"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            ExpansionTile(
              trailing: Icon(_expanded == true ? Icons.remove : Icons.add),
              title: Text(
                "Product ID",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ExpansionTile(
              trailing: Icon(_expanded == true ? Icons.remove : Icons.add),
              title: Text(
                "Delivery",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 15),
                onPressed: () {},
                minWidth: double.infinity,
                textColor: Colors.black,
                color: Color(0xffb7ea18),
                child: Center(child: Text("Add To Cart")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
