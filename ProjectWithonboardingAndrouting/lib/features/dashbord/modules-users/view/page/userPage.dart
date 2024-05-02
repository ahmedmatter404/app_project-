import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frist_pages/core/utils/extension.dart';
import 'package:frist_pages/features/dashbord/modules-users/controller/cubit/user_model_dart_cubit.dart';
import 'package:frist_pages/features/dashbord/modules-users/view/components/UserWidgets.dart';
//import 'package:frist_pages/features/auth/Users/controller/cubit/user_model_dart_cubit.dart';
//import 'package:frist_pages/features/auth/Users/view/components/UserWidgets.dart';
//import 'package:frist_pages/features/dashbord/modules-users/controller/cubit/user_model_dart_cubit.dart';

class userpage extends StatelessWidget {
  const userpage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserModelDartCubit(),
      child: BlocBuilder<UserModelDartCubit, UserModelDartState>(
        builder: (context, state) {
          final UserModelDartCubit controller =
              context.read<UserModelDartCubit>();
          return Scaffold(
            body: state is UserLoading
                ? const CircularProgressIndicator()
                : state is UserEmpty
                    ? const Center(
                        child: Icon(
                        CupertinoIcons.camera,
                        size: 50,
                        color: Colors.black,
                      ))

                    : ListView.separated(
                      separatorBuilder: (_, int index) => Divider(height: 1,thickness: 3,)  ,
                        itemCount: controller.users.length,
                        itemBuilder: (_, int index) {
                          return UserWidget(usermodel: controller.users[index]);
                        }),
          );
        },
      ),
    );
  }
}
