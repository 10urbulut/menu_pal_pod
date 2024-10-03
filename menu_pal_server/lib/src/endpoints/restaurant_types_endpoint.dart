import 'package:menu_pal_server/src/generated/restaurant_type.dart';
import 'package:serverpod/serverpod.dart';

class RestaurantTypesEndpoint extends Endpoint {
  Future<List<RestaurantType>> getAllRestaurantTypes(Session session) async {
    return await RestaurantType.db.find(session, orderBy: (t) => t.name);
  }

  Future<RestaurantType?> getRestaurantType(Session session, int id) async {
    return await RestaurantType.db.findById(session, id);
  }

  Future<RestaurantType> addRestaurantType(
      Session session, RestaurantType value) async {
    value.createdAt = DateTime.now().toUtc();
    return await RestaurantType.db.insertRow(session, value);
  }

  Future<RestaurantType> deleteRestaurantType(
      Session session, RestaurantType value) async {
    value.deletedAt = DateTime.now().toUtc();
    return await RestaurantType.db.deleteRow(session, value);
  }

  Future<RestaurantType> updateRestaurantType(
      Session session, RestaurantType value) async {
    value.updatedAt = DateTime.now().toUtc();

    return await RestaurantType.db.updateRow(session, value);
  }
}
