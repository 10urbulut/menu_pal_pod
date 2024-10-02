import 'package:menu_pal_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class CitiesEndpoint extends Endpoint {
  Future<List<City>> getAllCities(Session session) async {
    return await City.db.find(session, orderBy: (t) => t.id);
  }

  Future<List<City>> getCitiesByCountry(Session session, int countryId) async {
    return await City.db.find(
      session,
      where: (table) => table.countryId.equals(countryId),
      orderBy: (t) => t.name,
    );
  }

  Future<City?> getCity(Session session, int id) async {
    return await City.db.findById(session, id);
  }

  Future<City> addCity(Session session, City entity) async {
    entity.createdAt = DateTime.now().toUtc();
    return await City.db.insertRow(session, entity);
  }

  Future<City> deleteCity(Session session, City entity) async {
    entity.deletedAt = DateTime.now().toUtc();
    return await City.db.deleteRow(session, entity);
  }

  Future<City> updateCity(Session session, City entity) async {
    entity.updatedAt = DateTime.now().toUtc();
    return await City.db.updateRow(session, entity);
  }
}
