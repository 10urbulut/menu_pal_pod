import 'package:menu_pal_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class WorkPlaceEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter.
  // `bool`, `int`, `double`, `String`, `UuidValue`, `Duration`, `DateTime`, `ByteData`,
  // and other serializable classes, exceptions and enums from your from your `protocol` directory.
  // The methods should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.
  Future<void> workHere(Session session, String name) async {
    print("workHere worked");

    //////////////////////----------------////////////////////
    ///
    ///

    //////////////////////----------------////////////////////
  }
}

List<RestaurantType> restaurantTypes = [
  RestaurantType(
    name: 'Bar',
    description: 'Beer, cocktail',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Cafe',
    description: 'Coffee, pastries',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Fine Dining',
    description: 'Gourmet meals, formal atmosphere',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Fast Food',
    description: 'Burgers, fries, quick service',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Casual Dining',
    description: 'Comfort food, relaxed atmosphere',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Buffet',
    description: 'All-you-can-eat, various cuisines',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Food Truck',
    description: 'Street food, fast service',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Bistro',
    description: 'Small, casual, simple meals',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Steakhouse',
    description: 'Steak, meat dishes',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Pizzeria',
    description: 'Pizza, Italian food',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Seafood',
    description: 'Fish, shellfish, seafood specialties',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Dessert Shop',
    description: 'Cakes, ice cream, sweets',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Vegetarian',
    description: 'Plant-based dishes',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Vegan',
    description: 'Dairy-free, meat-free meals',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Sushi Bar',
    description: 'Sushi, Japanese cuisine',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Grill',
    description: 'Barbecue, grilled dishes',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Diner',
    description: 'American comfort food, breakfast all day',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Bakery',
    description: 'Breads, pastries, baked goods',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Pub',
    description: 'Beer, casual drinks, pub food',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Tapas Bar',
    description: 'Spanish small plates, wine',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Gastropub',
    description: 'Gourmet food, craft beers',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Ice Cream Parlor',
    description: 'Ice cream, frozen desserts',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Juice Bar',
    description: 'Fresh juices, smoothies',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Teahouse',
    description: 'Tea, light snacks',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Brasserie',
    description: 'French-style, casual dining',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'BBQ Joint',
    description: 'Smoked meats, barbecue',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Ramen Shop',
    description: 'Ramen, Japanese noodles',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Kebab Shop',
    description: 'Grilled meats, kebabs',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Dim Sum House',
    description: 'Chinese small dishes, tea',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Creperie',
    description: 'Crepes, light French meals',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Fondue Restaurant',
    description: 'Fondue, melted cheese and chocolate',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Taco Stand',
    description: 'Tacos, Mexican street food',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Steamboat Restaurant',
    description: 'Hot pot, Asian soups',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Curry House',
    description: 'Indian curries, spices',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Fried Chicken Shop',
    description: 'Fried chicken, quick service',
    createdAt: DateTime.now().toUtc(),
  ),
  RestaurantType(
    name: 'Shawarma Stand',
    description: 'Shawarma, Middle Eastern street food',
    createdAt: DateTime.now().toUtc(),
  ),
];
