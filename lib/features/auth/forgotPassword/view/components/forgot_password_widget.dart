import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/validation.dart';
//import 'package:flutter_application_1/core/utils/validation.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

             children: [
            ///Mail
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                validator: MyValidation().emailValidate ,
                decoration: const InputDecoration(
                  labelText: "Email Adrress",
                      fillColor: Color.fromARGB(255, 246, 246, 247),
                      filled: true,
                     border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),

                        
                           ),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 1)

          
          ),
         errorBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 2)

            
              )
              )
              ),

                const SizedBox(height: 30),
        ]
      ),
    );
  }
}
