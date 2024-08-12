import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_screen/model/provider.dart';
import 'package:provider/provider.dart';

class InputUserName extends StatelessWidget {
  const InputUserName({super.key});

  @override
  Widget build(BuildContext context) {

    final userName = context.watch<LocalProvider>().userName;
    
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            userName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}