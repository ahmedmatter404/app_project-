import 'package:flutter/material.dart';

class Button_Widget extends StatelessWidget {
  const Button_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)
          ),
          onPressed: (){

        }, child: 
        Text('sign up',style: TextStyle(color: Colors.black,  ),
         ),
        ),
   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("aleady have an account?"),
        TextButton(
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.all(3))),
        
        onPressed: (){
        },
         child: Text('log in',
          style: TextStyle(
          color: Colors.blue,
          decorationStyle: TextDecorationStyle.solid,
          )
          )
          ),
    ],
   ),


      ],
    );

  }
}