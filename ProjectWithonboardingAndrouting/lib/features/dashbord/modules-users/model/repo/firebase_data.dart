//import 'package:frist_pages/features/auth/Users/model/userModel.dart';
import 'package:frist_pages/features/dashbord/modules-users/model/repo/parent_data.dart';
import 'package:frist_pages/features/dashbord/modules-users/model/userModel.dart';
//import 'package:frist_pages/features/dashbord/modules/model/repo/parent_data.dart';
//import 'package:frist_pages/features/dashbord/modules/model/userModel.dart';

class firebaseRepo extends parentRepo {
  static firebaseRepo? instance = firebaseRepo._init();
  firebaseRepo._init();




  @override
  Future<void> delete({required int id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<UserModel>> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }


  @override
  Future<void> insert({required String name, String? address}) {
    // TODO: implement insert
    throw UnimplementedError();
  }

}
