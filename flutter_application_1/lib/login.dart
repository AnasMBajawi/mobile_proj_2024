import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Sgin in",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold , color:Color(0xFFEFFFFF)),
        ),
        Text("Enter your credential to login", 
              style: TextStyle(color:Color(0xFFEFFFFF))
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          style :const TextStyle( color: Color(0xFFFFFFFF),),
          decoration: InputDecoration(
              hintText: "Username",
              hintStyle: const TextStyle(color: Color(0xFFEFFFFF)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor:const Color(0xFF125868),
              filled: true,
              prefixIcon: const Icon(Icons.person, color: Color(0XFFFFFFFF),)),
        ),
        const SizedBox(height: 15),
        TextField(
          style :const TextStyle( color: Color(0xFFFFFFFF),),
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(color: Color(0xFFEFFFFF)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: const Color(0xFF125868),
            filled: true,
            prefixIcon: const Icon(Icons.password, color: Color(0XFFFFFFFF),),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: const Color(0xFF27FB6B),
          ),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20 ,color: Color(0xFFEFFFFF)),
          ),
        )
      ],
    );
  }
}
