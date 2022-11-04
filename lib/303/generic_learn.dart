// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void printName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int initialValue = admin.role == 1 ? admin.money : 0;

    final sumMoney1 = users.map((element) => element.money).fold<int>(
        initialValue, (previousValue, element) => previousValue + element);

    final sumMoney2 = users.fold<int>(initialValue,
        (previousValue, element) => previousValue + element.money);

    return sumMoney2;
  }

  Iterable<R>? showNames<R>(List<GenericUser> users) {
    if (R.runtimeType is String) {
      final names = users.map((e) => e.name).cast<T>();
      return names.cast<R>();
    }

    return null;
  }
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(super.name, super.id, super.money, this.role);
}
