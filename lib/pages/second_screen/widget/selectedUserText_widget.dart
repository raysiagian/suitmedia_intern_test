import 'package:flutter/material.dart';
import 'package:flutter_app/pages/first_screen/model/provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/pages/third_screen/model/user.dart';

class SelectedUser extends StatelessWidget {
  const SelectedUser({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedUser = context.watch<LocalProvider>().selectedUser;

    return Container(
      child: Text(
        selectedUser != null ? selectedUser.full_name : "Selected User Name",
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
