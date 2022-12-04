import 'dart:math';

import 'package:flutter/material.dart';


class PatientTile extends StatelessWidget{
  
  final String name;
  final String time;
  final String illness;
  final int number;
  
  
  const PatientTile({
    Key? key,
    required this.name,
    required this.time,
    required this.illness, 
    required this.number, 
  
  
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    int n=number+1;
    return Column(
     children: [
      SizedBox(
        
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              CircleAvatar( 
                backgroundColor: Colors.white,
                child:Image.asset(
                
                'assets/images/patient$n.jpeg',
                height: 40.0,
                width: 40.0,
                )
                ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                    children: [
                      Text(
                         name,
                         style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                           ),
                        ),
                       
                    ],
                  ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                children: [
                  Text(
                     time,
                     style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                       ),
                     textAlign: TextAlign.left,
                  ),
                  const Text(
                     ' - ',
                     style: TextStyle(color: Colors.black),
                  ),
                  Text(

                    illness,
                    style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                       ),
                  ),
                ],
              ),
              
              ],
              ),
            ],
          ),
          
          ),

      ),
       const Divider(
          thickness: 1,
          color: Colors.white,
          height: 4,
        )
     ],

    );
  }


}