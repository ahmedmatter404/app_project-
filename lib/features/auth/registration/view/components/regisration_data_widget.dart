import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/validation.dart';


// ignore: must_be_immutable
class RegistrationDataWidget extends StatelessWidget {
  RegistrationDataWidget({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Container(
       
      
        padding: const EdgeInsetsDirectional.all(30),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [ 
          const Text('Signup' ,
          style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
        ),

        const SizedBox(height: 25),
        
        
          
              // const Text("First Name ",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 17, fontWeight: FontWeight.bold,  ),),
              
             

/// First Name
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                validator: MyValidation().nameValidate,
                decoration: decoration.copyWith(
                  labelText: "First Name",
                )),

            const SizedBox(height: 15),

            ///Last Name
            // const Text("Last Name ",style: TextStyle(color: Color.fromARGB(246, 255, 255, 255), fontSize: 17, fontWeight: FontWeight.bold, )),
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                validator: MyValidation().nameValidate,
                decoration: decoration.copyWith(
                  labelText: "Last Name")),

            const SizedBox(height: 15),

            ///Mail
            // const Text("Email ",style: TextStyle(color:Color.fromARGB(246, 255, 255, 255), fontSize: 17, fontWeight: FontWeight.bold, )),
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: TextEditingController(),
                keyboardType: TextInputType.emailAddress,
                validator: MyValidation().emailValidate,
                decoration: decoration.copyWith(
                  labelText: "Email Adrress",
                  prefixIcon: const Icon(Icons.mail),
                  
                )),

            const SizedBox(height: 15),

            ///Password
            // const Text("Password ",style: TextStyle(color: Color.fromARGB(246, 255, 255, 255), fontSize: 17, fontWeight: FontWeight.bold, )),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,

              controller: TextEditingController(),
              // keyboardType: TextInputType.visiblePassword,
              validator: MyValidation().passwordValidate,
              decoration:decoration.copyWith(
                labelText: "Password",
                
                prefixIcon: const Icon(Icons.lock),
              ),
              obscureText: true,
            ),
        
          ],
        )
        );
  }
  


  InputDecoration decoration = const InputDecoration(
      fillColor: Color.fromARGB(249, 231, 231, 232),
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1),

        // borderRadius: BorderRadius.circular(30),
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
                      color: Colors.blue ,
                      width: 2
                  ) ,
                  // borderRadius: BorderRadius.circular(10);
          ),
      errorBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 2 ),

              // borderRadius: BorderRadius.circular(50)
              ));
}
