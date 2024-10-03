import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class MenusEndpoint extends Endpoint {
  Future<void> addMenu(Session session, Menu menu) async {
    menu.createdAt = DateTime.now().toUtc();

    await Menu.db.insertRow(session, menu);
  }

  Future<void> deleteMenu(Session session, Menu menu) async {
    menu.deletedAt = DateTime.now().toUtc();
    await Menu.db.updateRow(session, menu);
  }

  Future<List<Menu>> getAllMenus(Session session) async {
    // By ordering by the id column, we always get the notes in the same order
    // and not in the order they were updated.
    return await Menu.db.find(
      session,
      where: (table) => table.deletedAt.equals(null),
      orderBy: (t) => t.id,
    );
  }
}
