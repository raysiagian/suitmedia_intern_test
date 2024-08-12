import 'package:flutter/material.dart';
import 'package:flutter_app/pages/second_screen/screen/second_page.dart';
import 'package:flutter_app/styles/local_color.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/first_screen/model/provider.dart';

class FirstPageWidget extends StatelessWidget {
  const FirstPageWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController _nameTextController = TextEditingController();
    final TextEditingController _palindromeTextController = TextEditingController();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                TextField(
                  controller: _nameTextController,
                  obscureText: false,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    hintText: 'Name',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _palindromeTextController,
                  obscureText: false,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    hintText: 'Palindrome',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    String inputText = _palindromeTextController.text;
                    context.read<LocalProvider>().checkPalindrome(inputText);

                    final bool isPalindrome = context.read<LocalProvider>().isPalindrome;

                    final snackBar = SnackBar(
                      content: Text(isPalindrome
                          ? 'isPalindrome'
                          : 'not palindrome'),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                      'CHECK',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    context.read<LocalProvider>().setUserName(_nameTextController.text);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
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
                      'NEXT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
