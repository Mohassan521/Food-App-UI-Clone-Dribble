import 'package:api_testing/models/recipe_info.dart';
import 'package:api_testing/services/apiServices.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text("Spoonacular API testing"),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: NetworkApiServices().getRecipeInfo(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  RecipeInfo info = snapshot.data!;
                  return Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.ingredients.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(image: NetworkImage(info.image))),
                          title: Text(info.title),
                          subtitle: Text(info.ingredients[index].aisle),
                        );
                      },
                    ),
                  );
                }
                return const Text("something went wrong");
              })
        ],
      ),
    );
  }
}
