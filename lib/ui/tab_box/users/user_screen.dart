import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tursnuov_default_project/network/repositories/user_repo.dart';
import 'package:tursnuov_default_project/utils/app_image.dart';

import '../../../data/model/user/user_model.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key, required this.userRepo}) : super(key: key);

  final UserRepo userRepo;

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
List<UserModel> userModel = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.logout_outlined))
        ],
        title: Text("user screen"),
      ),
      body:ListView(
        children: [
          ...List.generate(userModel.length, (index) {
            UserModel users = userModel[index];
            return ListTile(
              title: Text(users.name.toString(),style: TextStyle(color: Colors.black54),),
              subtitle: Text(users.username),
            );
          })
        ],
      )
    );
  }
}
