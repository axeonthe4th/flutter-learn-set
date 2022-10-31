import 'dart:convert';

import '../shared_learn_cache.dart';
import '../shared_manager.dart';

class UserCacheManager {
  final SharedManager sharedManager;

  UserCacheManager(this.sharedManager);

  void saveItems(List<User> items) {
    final _items = items.map((element) => jsonEncode(element)).toList();
    sharedManager.saveStringItems(SharedKeys.users, _items);
  }

  List<User>? getItems() {
    final itemsString = sharedManager.getStringItems(SharedKeys.users);
    if (itemsString?.isNotEmpty ?? false) {
      return itemsString!.map((element) {
        final jsonObject = jsonDecode(element);

        return User("name", "description", "url");
      }).toList();
    }
    return null;
  }
}
