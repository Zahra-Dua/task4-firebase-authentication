import 'package:flutter/material.dart';
import 'package:task5_firebase_authentication/features/auth/data/auth_service.dart';
import 'package:task5_firebase_authentication/features/auth/models/user_model.dart';

import '../../../services/firestore_service.dart';
import '../presentation/profile_screen.dart';

import '../../../core/widgets/custom_textfield.dart';
import '../../../core/constants/app_colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _authService = AuthService();
  final _firestoreService = FirestoreService();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _loading = false;

  void _signup() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _loading = true);
      try {
        final user = await _authService.signUp(_email.text, _password.text);
        if (user != null) {
          UserModel newUser = UserModel(
            uid: user.uid,
            name: _name.text,
            email: _email.text,
          );
          await _firestoreService.saveUser(newUser);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => ProfileScreen(userId: user.uid)),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(e.toString())));
      }
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text("Signup"),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: _name,
                  label: "Name",
                  validator: (val) => val!.isEmpty ? "Please enter name" : null,
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  controller: _email,
                  label: "Email",
                  validator: (val) => val!.isEmpty ? "Enter email" : null,
                ),
                const SizedBox(height: 12),
                CustomTextField(
                  controller: _password,
                  label: "Password",
                  obscureText: true,
                  validator: (val) => val!.length < 6 ? "Min 6 chars" : null,
                ),
                const SizedBox(height: 20),
                _loading
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          minimumSize: const Size(double.infinity, 48),
                        ),
                        onPressed: _signup,
                        child: const Text("Signup"),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
