import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_screen/widget/first_page_widget.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background 1.png",),
                fit: BoxFit.cover,
              )
            ),
          ),
          SingleChildScrollView(
            child: Column(children: [
              
              Container(
                padding: EdgeInsets.only(top: 120),
                child: Image.asset(
                  "assets/images/ic_photo.png"
                ),
              ),
              const SizedBox(height: 40),
              FirstPageWidget()
            ],),
          )
        ],
      ),
    );
  }
}