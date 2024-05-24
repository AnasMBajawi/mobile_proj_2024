import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _nationalNumberController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        _dateController.text = "${pickedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A2E36),
      body: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _header(context),
            _inputField(context),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Sign Up",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xFFEFFFFF)),
        ),
        Text(
          "Enter your details to sign up",
          style: TextStyle(color: Color(0xFFEFFFFF)),
        ),
      ],
    );
  }

  Widget _inputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _usernameController,
          style: const TextStyle(color: Color(0xFFFFFFFF)),
          decoration: InputDecoration(
            hintText: "Username",
            hintStyle: const TextStyle(color: Color(0xFFEFFFFF)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: const Color(0xFF125868),
            filled: true,
            prefixIcon: const Icon(Icons.person, color: Color(0xFFFFFFFF)),
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          controller: _passwordController,
          style: const TextStyle(color: Color(0xFFFFFFFF)),
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(color: Color(0xFFEFFFFF)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: const Color(0xFF125868),
            filled: true,
            prefixIcon: const Icon(Icons.lock, color: Color(0xFFFFFFFF)),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 15),
        TextField(
          controller: _dateController,
          style: const TextStyle(color: Color(0xFFFFFFFF)),
          decoration: InputDecoration(
            hintText: "Date of Birth",
            hintStyle: const TextStyle(color: Color(0xFFEFFFFF)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: const Color(0xFF125868),
            filled: true,
            prefixIcon: const Icon(Icons.calendar_today, color: Color(0xFFFFFFFF)),
          ),
          readOnly: true,
          onTap: () => _selectDate(context),
        ),
        const SizedBox(height: 15),
        TextField(
          controller: _nationalNumberController,
          style: const TextStyle(color: Color(0xFFFFFFFF)),
          decoration: InputDecoration(
            hintText: "National Number",
            hintStyle: const TextStyle(color: Color(0xFFEFFFFF)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: const Color(0xFF125868),
            filled: true,
            prefixIcon: const Icon(Icons.badge, color: Color(0xFFFFFFFF)),
          ),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            // Handle sign-up logic here
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: const Color(0xFF27FB6B),
          ),
          child: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 20, color: Color(0xFFEFFFFF)),
          ),
        ),
      ],
    );
  }
}
