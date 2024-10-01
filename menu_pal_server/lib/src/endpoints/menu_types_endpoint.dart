import 'package:menu_pal_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class MenuTypesEndpoint extends Endpoint {
  Future<List<MenuType>> getAllMenuTypes(Session session) async {
    return await MenuType.db.find(session, orderBy: (t) => t.name);
  }

  Future<MenuType?> getMenuType(Session session, int id) async {
    return await MenuType.db.findById(session, id);
  }

  Future<MenuType> addMenuType(Session session, MenuType menuType) async {
    menuType.createdAt = DateTime.now().toUtc();
    return await MenuType.db.insertRow(session, menuType);
  }

  Future<MenuType> deleteMenuType(Session session, MenuType menuType) async {
    menuType.deletedAt = DateTime.now().toUtc();
    return await MenuType.db.deleteRow(session, menuType);
  }

  Future<MenuType> updateMenuType(Session session, MenuType menuType) async {
    menuType.updatedAt = DateTime.now().toUtc();

    return await MenuType.db.updateRow(session, menuType);
  }
}
