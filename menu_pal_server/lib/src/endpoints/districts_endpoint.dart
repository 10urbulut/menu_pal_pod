import 'package:menu_pal_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class DistrictsEndpoint extends Endpoint {
  Future<List<District>> getAllDistricts(Session session) async {
    return await District.db.find(session, orderBy: (t) => t.id);
  }

  Future<List<District>> getDistrictsByCity(Session session, int cityId) async {
    return await District.db.find(
      session,
      where: (table) => table.cityId.equals(cityId),
      orderBy: (t) => t.name,
    );
  }

  Future<District?> getDistrict(Session session, int id) async {
    return await District.db.findById(session, id);
  }

  Future<District> addDistrict(Session session, District entity) async {
    entity.createdAt = DateTime.now().toUtc();
    return await District.db.insertRow(session, entity);
  }

  Future<District> deleteDistrict(Session session, District entity) async {
    entity.deletedAt = DateTime.now().toUtc();
    return await District.db.deleteRow(session, entity);
  }

  Future<District> updateDistrict(Session session, District entity) async {
    entity.updatedAt = DateTime.now().toUtc();
    return await District.db.updateRow(session, entity);
  }
}
