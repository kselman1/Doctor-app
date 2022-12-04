import 'package:doctor_app/const.dart';
import 'package:flutter/material.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.title, required this.colour, required this.onPressed});

  final Color colour;
  final String title;
  final VoidCallback? onPressed; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 0,
        color: colour,
        borderRadius: BorderRadius.circular(2.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 326.0,
          height: 40.0,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

