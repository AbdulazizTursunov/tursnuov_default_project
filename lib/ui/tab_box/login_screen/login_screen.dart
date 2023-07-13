import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tursnuov_default_project/utils/app_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login screen"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                width: 220,
                child: Image.asset(AppImage.america),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter password',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              ElevatedButton(
                onPressed: () {
                  if (nameController.text.length > 0) {
                    if (passwordController.text.length > 0) {


                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("password !"),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("name !"),
                      ),
                    );
                  }
                },
                child: const Text("pressed"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
