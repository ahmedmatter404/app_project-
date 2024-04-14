import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilites/validation.dart';

class required_data extends StatelessWidget {
  const required_data({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Row(
        children: [
          Text('SIGN UP',style:
          
           TextStyle(
            
          ),
          textAlign: TextAlign.center,
          
          )
          
        ],
    
        
        ),
        SizedBox(
          height: 40,
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: 'User Name',
            floatingLabelAlignment:FloatingLabelAlignment.center,
             labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18  ),
              hintText: 'Enter Your User Name',
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0) ),
              errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red ), )
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator:myvalidaton().userValidation,
          ),

        SizedBox(
          height: 30,
        ),

             TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: 'Email ',
              floatingLabelAlignment:FloatingLabelAlignment.center,
              // ignore: prefer_const_constructors
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              hintText: 'Enter Your Email',
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: myvalidaton().emailValidate,
          ),
        
        SizedBox(
          height: 30,
        ),
        
            TextFormField(
             obscureText: true,
             decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_open),
              filled: true,
              fillColor: Color.fromARGB(255, 255, 255, 255),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              labelText: 'Password',
              floatingLabelAlignment:FloatingLabelAlignment.center,
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              hintText: 'Enter Your Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator:myvalidaton().passwordValidate,
          ),

        SizedBox(
          height: 20,
        ),

      
      ],
    );
  }
}
