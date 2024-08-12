import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/second_screen/screen/second_page.dart';
import 'package:flutter_app/pages/third_screen/model/user.dart';
import 'package:flutter_app/pages/third_screen/widget/user_card_widget.dart';
import 'package:flutter_app/styles/local_color.dart';
import 'package:flutter_app/url/user_url.dart';
import 'package:http/http.dart' as http;


class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

Future<List<User>> fetchUser() async {
  try{
    final respose = await http.get(Uri.parse(usersurl));

    if(respose.statusCode == 200){
      final jsonData = jsonDecode(respose.body)['data'] as List<dynamic>;
      return jsonData.map((e) => User.fromJson(e)).toList();
    }else{
      throw Exception(("Failed to get User Data from API : ${respose.statusCode}"));
    }

  }catch (e){
    throw Exception(("Error to get User Data"));
  }
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(
          Icons.arrow_back_ios,
          color: LocalColor.arrowColor,
        ),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        ),
        title: const Text(
          "Third Screen",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder<List<User>>(
          future: fetchUser(),
          builder: (context, snapshot){
            if (snapshot.connectionState == ConnectionState.waiting){
              return const Center(
                child:  CircularProgressIndicator(),
              );
            }else if(snapshot.hasError){
              return Center(
                child: Text('Error fetching User: ${snapshot.error}'),
              );
            }else{
              final userList = snapshot.data!;
              return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (BuildContext context, int index){
                  final user = userList[index];
                  return UserCard(user: user);
                }
              );
            }
          }
        ),
    );
  }
}