import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:store_ify/core/errors/failures.dart';
import 'package:store_ify/core/models/user.dart';
import 'package:store_ify/features/layout/data/entities/change_index_params.dart';

abstract class LayoutRepo {
  void changeBottomNav({required ChangeIndexParams params});

  List<BottomNavigationBarItem> getBottomNavItems();

  List<Widget> views();

  Future<Either<Failure, User>> getUser();
}
