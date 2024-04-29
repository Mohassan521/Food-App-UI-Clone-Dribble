class RecipeInfo {
  int id;
  String title;
  int readyTime;
  int servings;
  String image;
  List<ExtendedIngredients> ingredients;

  RecipeInfo(
      {required this.id,
      required this.image,
      required this.readyTime,
      required this.servings,
      required this.title,
      required this.ingredients});

  factory RecipeInfo.fromJson(Map<String, dynamic> json) {
    var ingredientsList = json['extendedIngredients'] as List;
    List<ExtendedIngredients> extendedIngredientsList =
        ingredientsList.map((ingredient) {
      return ExtendedIngredients.fromJson(ingredient);
    }).toList();

    return RecipeInfo(
        id: json['id'],
        image: json['image'],
        readyTime: json['readyInMinutes'],
        servings: json['servings'],
        title: json['title'],
        ingredients: extendedIngredientsList);
  }
}

class ExtendedIngredients {
  int id;
  String aisle;
  String name;
  String consistency;
  String originalName;
  double amount;
  String unit;

  ExtendedIngredients(
      {required this.id,
      required this.aisle,
      required this.amount,
      required this.consistency,
      required this.name,
      required this.originalName,
      required this.unit});

  factory ExtendedIngredients.fromJson(Map<String, dynamic> json) {
    return ExtendedIngredients(
        id: json['id'],
        aisle: json['aisle'],
        amount: json['amount'],
        consistency: json['consistency'],
        name: json['name'],
        originalName: json['originalName'],
        unit: json['unit']);
  }
}
