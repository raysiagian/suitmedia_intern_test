import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_screen/screen/first_page.dart';
import 'package:flutter_app/pages/second_screen/widget/chooseUserButton_widget.dart';
import 'package:flutter_app/pages/second_screen/widget/inputUserName_widget.dart';
import 'package:flutter_app/pages/second_screen/widget/selectedUserText_widget.dart';
import 'package:flutter_app/styles/local_color.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: LocalColor.arrowColor,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstPage()),
            );
          },
        ),
        title: const Text(
          "Second Screen",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 30),
              InputUserName(),
              SizedBox(height: 200),
              Center(
                child: SelectedUser(),
              ),
               SizedBox(height: 200),
              ChooseUser(),
            ],
          ),
        ),
      ),
    );
  }
}
