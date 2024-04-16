import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(style : ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.lightBlue)),
            onPressed: () {


    }, child: Text('Confirm')) ,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Don't have account!") ,
            TextButton(onPressed: () {}, child: Text("Sign up" ,
            style: TextStyle(
              color: Colors.black ,
              decorationStyle: TextDecorationStyle.solid ,
              decoration: TextDecoration.underline ,
              decorationThickness: 3 ,
            ),) ,
            style: ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(3))
            ),)
          ],
        )
      ],
    );
  }
}
