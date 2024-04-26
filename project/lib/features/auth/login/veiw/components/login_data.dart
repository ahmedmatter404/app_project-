import 'package:flutter/material.dart';
import 'package:project/core/utilites/valied.dart';
class  Login_data extends StatelessWidget {
  const Login_data({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Login' ,
          style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )
        ),
        SizedBox(height: 25),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          validator: myvalidaton().emailValidate ,
          decoration: InputDecoration(
            label: Text('Enter Email'  ,
                        style:
                        TextStyle( fontWeight: FontWeight.bold,
                                    color: Colors.black,)
            ),
              floatingLabelAlignment: FloatingLabelAlignment.center,
              //floatingLabelBehavior: FloatingLabelBehavior.never,
              // suffixIcon: Icon(Icons.account_circle),
              prefixIcon: Icon(Icons.mail),
              hintText: '******@gmail.com',
              filled: true,
            border: OutlineInputBorder (
              borderSide: const BorderSide(
                color: Colors.blue ,
                width: 2
              ) ,
              borderRadius: BorderRadius.circular(30)
            ) ,
            focusedBorder: OutlineInputBorder (

            ) ,
            errorBorder: OutlineInputBorder (

            )
          ),
    ) ,
        SizedBox(height: 25),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          validator: myvalidaton().emailValidate ,
          obscureText: true,
          decoration: InputDecoration(
              label: Text('Your Password' ,
            style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                 color: Colors.black,)),
              floatingLabelAlignment: FloatingLabelAlignment.center,
              prefixIcon: Icon(Icons.lock),
              hintText: '**************',
              filled: true,
              border: OutlineInputBorder (
                  borderSide: const BorderSide(
                      color: Colors.blue ,
                      width: 2
                  ) ,
                  borderRadius: BorderRadius.circular(30)
              ) ,
              focusedBorder: OutlineInputBorder (

              ) ,
              errorBorder: OutlineInputBorder (

              )
          ),
        )],
    );
  }
}
