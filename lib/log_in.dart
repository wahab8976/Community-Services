import 'package:community_services/community_services.dart';
import 'package:community_services/sign_up.dart';
import 'package:community_services/widgets/auth_text_fields.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogIn();
}

class _LogIn extends State<LogIn> {
  @override

  var email_controller = TextEditingController();
  var password_controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'assets/images/logo.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),

            Text('Community Services', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,),),
            Text('Connect, Share, and Serve Together',style: TextStyle(color: Colors.grey),),
            SizedBox(
              width: 350,
              child: Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start, // Align label to left
                children: [
                  AuthTextField(label_passed: 'Email', hint_passed: 'Enter your Email',prefixIcon_passed: Icons.email_outlined,controller_passed: email_controller,keyboard_type_passed: TextInputType.emailAddress,),
                  AuthTextField(label_passed: 'Password', hint_passed: 'Enter your Password' , prefixIcon_passed: Icons.lock_outline,controller_passed: password_controller,keyboard_type_passed: TextInputType.text,)
                ],
              ),
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(onPressed: (){
                print('Email is ${email_controller.text} and pass is ${password_controller.text}');
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CommunityServices(),));
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent.shade700,
                  ),
                  child: Text('Log In',style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                  ),)),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Didn't have an account?"),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
            }, child: Text('Sign Up', style: TextStyle(color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}