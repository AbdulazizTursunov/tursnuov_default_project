import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tursnuov_default_project/utils/app_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late SharedPreferences sharedPreferences;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  _init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

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
                controller: _nameController,
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
                controller: _passwordController,
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
                  if (_nameController.text.length > 0) {
                    if (_passwordController.text.length > 0) {
                      sharedPreferences.setString("name", _nameController.text);
                      sharedPreferences.setString(
                          "password", _passwordController.text);
                      setState(() {
                        _init();
                      });
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
