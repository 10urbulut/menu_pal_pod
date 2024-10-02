import 'package:menu_pal_server/src/generated/town.dart';
import 'package:serverpod/serverpod.dart';

class TownsEndpoint extends Endpoint {
  Future<List<Town>> getAllTowns(Session session) async {
    return await Town.db.find(session, orderBy: (t) => t.id);
  }

  Future<List<Town>> getTownsByDistrict(Session session, int districtId) async {
    return await Town.db.find(
      session,
      where: (table) => table.districtId.equals(districtId),
      orderBy: (t) => t.name,
    );
  }

  Future<Town?> getTown(Session session, int id) async {
    return await Town.db.findById(session, id);
  }

  Future<Town> addTown(Session session, Town entity) async {
    entity.createdAt = DateTime.now().toUtc();
    return await Town.db.insertRow(session, entity);
  }

  Future<Town> deleteTown(Session session, Town entity) async {
    entity.deletedAt = DateTime.now().toUtc();
    return await Town.db.deleteRow(session, entity);
  }

  Future<Town> updateTown(Session session, Town entity) async {
    entity.updatedAt = DateTime.now().toUtc();
    return await Town.db.updateRow(session, entity);
  }
}
