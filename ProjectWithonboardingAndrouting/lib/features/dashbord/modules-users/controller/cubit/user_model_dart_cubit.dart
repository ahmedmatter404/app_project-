import 'dart:ffi';

import 'package:bloc/bloc.dart';
//import 'package:frist_pages/features/auth/Users/model/userModel.dart';
import 'package:frist_pages/features/dashbord/modules-users/model/repo/local_db_data.dart';
import 'package:frist_pages/features/dashbord/modules-users/model/userModel.dart';
//import 'package:frist_pages/features/dashbord/modules/model/repo/local_db_data.dart';
import 'package:meta/meta.dart';

part 'user_model_dart_state.dart';

class UserModelDartCubit extends Cubit<UserModelDartState> {
  UserModelDartCubit() : super(UserLoading()) {
    init();
  }

  List<UserModel> users = [];

  Future<void> init() async {
    emit(UserLoading());
    users = (await (await DatabaseRepo.instance).fetch());

    if (users.isEmpty){
    emit(UserEmpty());
    }
    else {
    emit(UserLoaded());
  }

  }


  //  init() {
  //   users = [
  //     UserModel(id: '0', name: 'samar', address: 'shebin'),
  //     UserModel(id: '0', name: 'samar', address: 'shebin'),
  //     UserModel(id: '0', name: 'samar', address: 'shebin'),
  //   ];
  // }
}
