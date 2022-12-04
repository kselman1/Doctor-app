import 'package:doctor_app/const.dart';
import 'package:doctor_app/dummy_data.dart';
import 'package:doctor_app/patient_tile.dart';
import 'package:doctor_app/screens/login_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  static const String id='home_screen';
  
  @override
 _HomeScreenState createState()=> _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
   
   return Padding(
     padding: const EdgeInsets.all(16.0),
     child: Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
            title: Image.asset(
              height: 35,
              'assets/images/logo.png',
              fit: BoxFit.scaleDown,
            ),
        actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.logout_rounded, color: Colors.black),
                onPressed: () {
                 showAlertDialog(BuildContext context) {
                  Widget cancelButton = TextButton(
                    child: const Text("Cancel"),
                     onPressed:  () {
                      Navigator.of(context).pop();
                     },
                     );
                  Widget continueButton = TextButton(
                  child: const Text("Ok"),
                   onPressed:  () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, LoginScreen.id);
                   },
                     );

  
                  AlertDialog alert = AlertDialog(
                   title: Text("Log out?"),
                   content: const Text("Are you sure you want to logout from the console?"),
                    actions: [
                    cancelButton,
                    continueButton,
                    ],
                  );

  
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                   return alert;
                  },
                );
               }
                  
                  
                }
                ),
          ],
       ),

       body: SafeArea(
        
         child: Column(
          children: [

            SizedBox(
             height: 80.0,
             child: Row(
              children: [
               Container(
                width: 80,
                height: 80,
                 decoration: const BoxDecoration(
	                shape: BoxShape.circle,
	                image: DecorationImage(
	                 image: AssetImage('assets/images/doctorr.png'),
	                fit: BoxFit.fill
	               ),
                 ),
                ),
                Column(
                  
                  children: const [
                    Text(
                      ' \nMy profile',
                       style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                       ),
                       textAlign: TextAlign.left,
                    ),
                    Text('  Dr.John Doe',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                       ),
                    )
                  ],
                ),
              ],
             ),
            ),
            const SizedBox(
              height: 20.0,
              child: Text(
                'Today',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: todaypatients.length,
              itemBuilder: (BuildContext context, int index) {
                  return PatientTile(
                            
                    name:todaypatients[index],
                    time: timeSlots[index],
                    illness: todayillness[index],
                    number:index,

                                    
                  );
              },
             ),

             const SizedBox(
              height: 20.0,
              child: Text(
                'Tommorow',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: tommorowpatients.length,
              itemBuilder: (BuildContext context, int index) {
                  return PatientTile(
                            
                    name:tommorowpatients[index],
                    time: timeSlots[index],
                    illness: tommorowillness[index],
                    number:index+3,

                                    
                  );
              },
             )


          ],

         ),

       ),
     ),
   );
  }
}