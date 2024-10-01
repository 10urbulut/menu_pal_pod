import 'package:menu_pal_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class MenuTypesEndpoint extends Endpoint {
  Future<List<MenuType>> getAllMenuTypes(Session session) async {
    return await MenuType.db.find(
      session,
      orderBy: (t) => t.name,
    );
  }

  Future<void> addMenuType(Session session, MenuType menu) async {
    menu.createdAt = DateTime.now().toUtc();
    await MenuType.db.insertRow(session, menu);
  }

  Future<void> deleteMenuType(Session session, MenuType menu) async {
    menu.deletedAt = DateTime.now().toUtc();
    await MenuType.db.deleteRow(session, menu);
  }
}
