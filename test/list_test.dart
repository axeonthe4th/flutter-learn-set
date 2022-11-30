import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:first/303/generic_learn.dart';
import 'package:first/product/widget/card/high_card.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});

  test("best of", () {
    List<GenericUser> users = [
      GenericUser("axeon", "11", 150),
      GenericUser("axeon", "12", 140),
      GenericUser("axeon1", "15", 130),
      GenericUser("axeon2", "116", 120)
    ];

    List<HighCard> highCards = users.map((e) {
      return HighCard(items: e.name.split("").toList());
    }).toList();

    try {
      final response = users.singleWhere(
        (element) => element.findUserName("axeon"),
        orElse: () {
          return GenericUser("", "", 0);
        },
      );
      print(response.name);
    } catch (e) {
      print(e);
    }

    print("${users.where((element) => element.money > 135)}");

    users.lastWhereOrNull((element) => element.id == "5");

    users.remove(GenericUser("axeon", "11", 150));
    users.removeAt(0);
    users.removeWhere((element) => element.id == "116");

    users.indexOf(GenericUser("axeon1", "15", 130));

    final index = users.indexWhere((element) => element.id == "15");

    if (index >= 0) {
      users[index] = GenericUser("xdxd", "id", 123);
    }

    users.map((e) => e.money).where((element) => element > 50);
  });

  test("xd", () {
    List<GenericUser> users = [
      GenericUser("axeon", "11", 150),
      GenericUser("axeon", "12", 140),
      GenericUser("axeon1", "15", 130),
      GenericUser("axeon2", "116", 120)
    ];

    final response = users.singleWhereOrNull(
      (element) => element.findUserName("axeon"),
    );
    print(response);
  });
}
