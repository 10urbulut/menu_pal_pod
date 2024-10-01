import 'package:menu_pal_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class CountriesEndpoint extends Endpoint {
  Future<List<Country>> getAllCountries(Session session) async {
    return await Country.db.find(session, orderBy: (t) => t.id);
  }

  Future<Country?> getCountry(Session session, int id) async {
    return await Country.db.findById(session, id);
  }

  Future<Country> addCountry(Session session, Country entity) async {
    entity.createdAt = DateTime.now().toUtc();
    return await Country.db.insertRow(session, entity);
  }

  Future<Country> deleteCountry(Session session, Country entity) async {
    entity.deletedAt = DateTime.now().toUtc();
    return await Country.db.deleteRow(session, entity);
  }

  Future<Country> updateCountry(Session session, Country entity) async {
    entity.updatedAt = DateTime.now().toUtc();
    return await Country.db.updateRow(session, entity);
  }
}
