import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class MenusEndpoint extends Endpoint {
  Future<String?> addMenu(Session session, Menu menu) async {
    String? addMenuRules(Menu menu) {
      if (menu.brand == null) {
        return "Name cannot be empty n";
      }
      if (menu.brand!.isEmpty) {
        return "Name cannot be empty";
      }

      if (menu.link == null) {
        return "QR Code cannot be empty";
      }

      if (menu.addresses?.first.street == null) {
        return ("Street cannot be empty");
      }

      if (menu.addresses?.first.cityId == null) {
        return ('City is empty');
      }

      if (menu.addresses?.first.districtId == null) {
        return ('District is empty');
      }

      if (menu.addresses?.first.townId == null) {
        return ('Town is empty');
      }

      if (menu.restaurantTypeIds == null) {
        return ('Type is empty not selected');
      }
      if (menu.restaurantTypeIds!.isEmpty) {
        return ('Type is empty');
      }

      return null;
    }

    String? ruleResult = addMenuRules(menu);
    if (ruleResult != null) {
      return ruleResult;
    }

    menu.createdAt = DateTime.now().toUtc();

    await Menu.db.insertRow(session, menu);
    return null;
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
