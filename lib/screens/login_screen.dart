import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:doctor_app/const.dart';
import 'package:doctor_app/dummy_data.dart';
import 'package:doctor_app/login_button.dart';
import 'package:doctor_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 
 late String email;
 late String password;
 String error='';

 @override
  Widget build(BuildContext context) {
   return Scaffold(
     
    backgroundColor: whiteColor,
    
    body: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(
           height: 66.0,
           width: 326.0,
           child: Image.asset('assets/images/logo.png'),
        ),
        const SizedBox(
          height: 36.0,
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black),
          onChanged: (value) {
             email = value;
          },
               
          decoration:
            TextFieldDecoration.copyWith(hintText: 'E-mail'),
        ),

        const SizedBox(
          height: 16.0,
        ),
        TextField(
          obscureText: true,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black),
          onChanged: (value) {
             password = value;
          },
               
          decoration:
            TextFieldDecoration.copyWith(hintText: 'Password'),
        ),
        
        

        LoginButton(
          title: 'Log In', 
          colour: greenColor, 
          onPressed: ()async{
            timesList();
            if(checkEmailAndPassword(email,password)){
               Navigator.pushNamed(context, HomeScreen.id);
            }
            else{
              error='Pogresan e-mail ili password';
            }
          var connectivityResult = await (Connectivity().checkConnectivity());
            if (connectivityResult == ConnectivityResult.mobile) {
              
  
             } else if (connectivityResult == ConnectivityResult.wifi) {
               error='Nema internet konekcije';
            }
            
            
          }
          
          ),
          SizedBox(
            height: 36.0,
            child: Text(
              error,
               style: const TextStyle(
                color: Colors.red,
                fontSize: 12.0,
               ),
              
            ),
          ),

        ],
        
      ),
    ),



   );
  }

 
}
