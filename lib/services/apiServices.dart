import 'dart:convert';

import 'package:api_testing/models/cartsModel.dart';
import 'package:api_testing/models/recipeModel.dart';
import 'package:api_testing/models/recipe_info.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices {
  Future<RecipeInfo> getRecipeInfo() async {
    var apiUrl =
        "https://api.spoonacular.com/recipes/716429/information?&apiKey=5ac524cae6c64e08b0c05c9c0e7467d2";

    var response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);

      RecipeInfo recipeInfo = RecipeInfo.fromJson(json);

      return recipeInfo;
    } else {
      throw Exception('Something went wrong');
    }
  }

  Future<List<Cart>> getAllProducts() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/carts"));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body)['carts'];

      List<Cart> data = jsonData.map((e) => Cart.fromJson(e)).toList();

      return data;
    } else {
      throw Exception("something went wrong");
    }
  }

  Future<List<Recipes>> getRecipeList() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/recipes"));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body)['recipes'];

      List<Recipes> data = jsonData.map((e) => Recipes.fromJson(e)).toList();

      return data;
    } else {
      throw Exception("something went wrong");
    }
  }
}
