import 'dart:async';

import 'package:etimaden/operator_home_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text(widget.title),
      //),
      backgroundColor: Color.fromRGBO(251, 255, 207, 1),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/eti_logo.png",
                width: 150,
                height: 150,
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      color:  Color.fromRGBO(204, 144, 0, 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(204, 144, 0, 1),
                          width: 2.0
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    labelText: 'Kullanıcı adı',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen Kullanıcı adını gir.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration:  const InputDecoration(
                    labelStyle: TextStyle(
                      color:  Color.fromRGBO(204, 144, 0, 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(204, 144, 0, 1),
                          width: 2.0
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    ),
                    labelText: 'Şifre',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen şifreyi girin.';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(204, 144, 0, 1), // Background color
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Navigate the user to the Home page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OperatorHome()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Lütfen alanları doldurun')),
                        );
                      }
                    },
                    child: const Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}