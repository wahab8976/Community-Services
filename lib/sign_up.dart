import 'package:community_services/community_services.dart';
import 'package:community_services/widgets/auth_text_fields.dart';
import 'package:community_services/widgets/user_type_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override

  var cnic_controller = TextEditingController();
  var name_controller = TextEditingController();
  var email_controller = TextEditingController();
  var password_controller = TextEditingController();
  var phone_controller = TextEditingController();
  var address_controller = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 5,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    UserTypeCard(userType_passed: 'Volunteer', caption_passed: 'Ready to Help the Community', icon_passed: Icons.heart_broken_outlined,),
                    UserTypeCard(userType_passed: 'Individual', caption_passed: 'Looking for Community Services', icon_passed: Icons.person_2_outlined),
                    UserTypeCard(userType_passed: 'Organization', caption_passed: 'Providing Community Services', icon_passed: Icons.school)
                  ]
              ),
            ),
            SizedBox(
              height: 5,
            ),

            AuthTextField(label_passed: 'CNIC', hint_passed: 'Enter your CNIC', prefixIcon_passed: Icons.credit_card, controller_passed: cnic_controller,keyboard_type_passed: TextInputType.number,),
            AuthTextField(label_passed: 'Full Name', hint_passed: 'Enter your Name', prefixIcon_passed: Icons.person_2_outlined, controller_passed: name_controller,keyboard_type_passed: TextInputType.text,),
            AuthTextField(label_passed: 'Email', hint_passed: 'Enter your Email ',prefixIcon_passed: Icons.email_outlined,controller_passed: email_controller,keyboard_type_passed: TextInputType.emailAddress,),
            AuthTextField(label_passed: 'Phone Number', hint_passed: 'Enter phone number', prefixIcon_passed: Icons.phone_android, controller_passed: phone_controller,keyboard_type_passed: TextInputType.phone,),
            AuthTextField(label_passed: 'Address', hint_passed: 'Enter your Address', prefixIcon_passed: Icons.location_on_outlined, controller_passed: address_controller,keyboard_type_passed: TextInputType.text,),
            AuthTextField(label_passed: 'Password', hint_passed: 'Create a Password',prefixIcon_passed: Icons.lock_outline,controller_passed: password_controller,keyboard_type_passed: TextInputType.text,),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  print('Name: ${name_controller.text}, Email: ${email_controller.text} and Password: ${password_controller.text}');
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CommunityServices(),));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent.shade700,
                    ),
                    child: Text('Create Account',style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600
                    ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
