import 'package:community_services/edit_profile.dart';
import 'package:community_services/widgets/user_profile_navigation_btn.dart';
import 'package:community_services/widgets/user_progress_card.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
        width: screenWidth * 0.98,
        height: screenHeight * 0.98,
        child: Card(
          elevation: 2,
          shadowColor: Colors.grey.shade300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 45,
                ),
                child: Container(
                  child: Icon(Icons.person,size: 50,),
                ),
              ),Text('UserName',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text('userEmail@gmail.com',style: TextStyle(fontSize: 15,color: Colors.grey),),
              SizedBox(height: 50,),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0,bottom: 10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Individual",
                      style: TextStyle(
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 3,
                children: [
                  UserProgressCard(color_passed: Colors.blue, type_of_task_passed: "Posted", task_count_passed: "2", icon_passed: Icons.list),
                  UserProgressCard(color_passed: Colors.green, type_of_task_passed: "Completed", task_count_passed: "0",icon_passed: Icons.check,),
                  UserProgressCard(color_passed: Colors.grey, type_of_task_passed: "Total", task_count_passed: "3", icon_passed: Icons.timer)
                ],
              ),
              SizedBox(
                height: 70,
                width: screenWidth * 95,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UserProfileNavigationBtn(title_passed:'Edit Profile',color_passed: Colors.grey.shade900,icon_passed: Icons.edit,),
                        Icon(Icons.navigate_next),
                      ],
                    ),
                  ),
                ),
              ),SizedBox(
                height: 70,
                width: screenWidth * 95,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UserProfileNavigationBtn(title_passed:'Settings',color_passed: Colors.grey.shade900,icon_passed: Icons.settings,),
                        Icon(Icons.navigate_next),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 70,
                width: screenWidth * 95,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                    child: UserProfileNavigationBtn(title_passed:'Log Out',color_passed: Colors.red,icon_passed: Icons.logout,),
                  ),
                ),
            ],
            
            
          ),
        ),
      )

    );
  }
}
