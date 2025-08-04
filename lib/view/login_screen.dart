import 'package:flutter/material.dart';
import 'package:t_buy/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  // method to sign in user with email and password
  // get user from database then update app global state before we push replace
  Future<void> _loginButton({
    required String email,
    required String password,
  }) async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (ctx) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // keep track of email and password field state
    final TextEditingController email  = TextEditingController();
    final TextEditingController password  = TextEditingController();
    // know if password is shown
    bool isSecure = true;
    IconData showPasswordIcon = isSecure? Icons.remove_red_eye : Icons.remove_red_eye_rounded;
    return Scaffold(body: 
    Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Center(
          child: Expanded(child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(label: Text("Email"))),
              TextField(decoration: InputDecoration(label: Text("Password"),suffixIcon:  GestureDetector(
                
                onTap: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
                child: Icon(showPasswordIcon ),)),obscureText: true,),
      
            ],
          )),
          ),
                      TextButton(onPressed: ()async{
                await _loginButton(email: email.text, password: password.text);
              }, child: const Text("LOGIN"))
        ],
      ),
    )
    
    );
  }
}
