import 'dart:async';

import 'package:frist_pages/features/dashbord/modules-users/model/userModel.dart';

//import 'package:frist_pages/features/auth/Users/model/userModel.dart';

//import 'package:frist_pages/features/dashbord/modules/model/userModel.dart';

abstract class parentRepo {
  Future<void> insert({required String name, String? address});
  Future<List<UserModel>> fetch();
  Future<void> delete({required int id});
}
