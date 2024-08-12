import 'package:flutter/material.dart';
import 'package:flutter_app/pages/third_screen/screen/third_page.dart';
import 'package:flutter_app/styles/local_color.dart';

class ChooseUser extends StatelessWidget {
  const ChooseUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdPage()),
          );
        },
        child: Container(
          height: 44,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              color: LocalColor.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Choose a User',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
        ),
      ),
    );
  }
}