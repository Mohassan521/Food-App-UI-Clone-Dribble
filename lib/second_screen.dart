import 'package:api_testing/models/cartsModel.dart';
import 'package:api_testing/services/apiServices.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    NetworkApiServices apiServices = NetworkApiServices();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder(
              future: apiServices.getAllProducts(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        if (kDebugMode) {
                          print(snapshot.data![index].products.length);
                        }
                        return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data![index].products.length,
                            itemBuilder: (context, index2) {
                              return Card(
                                elevation: 1,
                                color: Colors.white10,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 5),
                                child: ListTile(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image(
                                        image: NetworkImage(snapshot
                                            .data![index]
                                            .products[index2]
                                            .thumbnail)),
                                  ),
                                  title: Text(snapshot
                                      .data![index].products[index2].title),
                                  subtitle: Text(
                                      "\$${snapshot.data![index].products[index2].price.toString()}"),
                                ),
                              );
                            });
                      }),
                );
              }),
        ],
      ),
    );
  }
}
