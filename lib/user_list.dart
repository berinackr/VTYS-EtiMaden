import 'package:flutter/material.dart';

class UserManagement extends StatefulWidget {
  @override
  State<UserManagement> createState() => _UserManagementState();
}

class _UserManagementState extends State<UserManagement> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform the user registration logic here
      // You can access emailController.text and passController.text for user inputs
      // Add your registration logic, API calls, or database operations here

      // Check if the email contains '@' symbol
      if (!emailController.text.contains('@')) {
        // Show a SnackBar with an error message for invalid email
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Email adresi geçerli değil. Lütfen "@" sembolünü içersin.'),
            duration: Duration(seconds: 2),
          ),
        );
        return; // Stop further processing if email validation fails
      }

      // Show a SnackBar with a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Kullanıcı kaydedildi!'), // Your success message
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kullanıcı"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous screen
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Color.fromRGBO(251, 255, 207, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Adjust vertical spacing here
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20), // Adjust vertical spacing here
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen geçerli bir isim giriniz!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "İsim",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20), // Adjust vertical spacing here
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen geçerli bir email adresi giriniz!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 20), // Adjust vertical spacing here
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: passController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen geçerli bir şifre giriniz';
                    }
                    return null;
                  },
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Şifre",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                        passToggle ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Adjust vertical spacing here
                InkWell(
                  onTap: _submitForm,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(204, 144, 0, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Kaydet",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
