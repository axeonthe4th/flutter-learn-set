import 'package:first/202/cache/user_model.dart';
import 'package:first/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});

  test("User calculate", () {
    final users = [
      GenericUser("axeon", "11", 150),
      GenericUser("axeon2", "12", 140),
      GenericUser("axeon3", "15", 130),
      GenericUser("axeon4", "116", 120),
    ];

    final userManagement = UserManagement(AdminUser("name", "id", 14, 1));
    final result = userManagement.calculateMoney(users);

    final testResponse = userManagement.showNames<String>(users);
    expect(result, 540);
  });
}
