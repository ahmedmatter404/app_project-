// ignore_for_file: dead_code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_pages/features/dashbord/modules-users/model/userModel.dart';
//import 'package:frist_pages/features/auth/Users/model/userModel.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.usermodel});
  final UserModel usermodel;
  @override
  Widget build(BuildContext context) {
  
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(2),
          child: Text(usermodel.name?? 'null'),
          
          ),
        ),
        Row(
          children: [
            Icon(
              CupertinoIcons.home,
              size: 25,
              color: Colors.blue,
            ),
            Text(usermodel.address ?? 'xxx')
          ],
        ),
      ],
    );
  }
}
