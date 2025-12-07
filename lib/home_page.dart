import 'package:community_services/widgets/services_type_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView( // Makes the page scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar
            SizedBox(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  hintText: 'Search Services...',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 20,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Horizontal services row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ServicesTypeCard(cardName: 'Education', icon: Icons.school_outlined),
                  SizedBox(width: 10),
                  ServicesTypeCard(cardName: 'Health', icon: Icons.heart_broken_outlined),
                  SizedBox(width: 10),
                  ServicesTypeCard(cardName: 'Entertainment', icon: Icons.light_mode_outlined),
                  SizedBox(width: 10),
                  ServicesTypeCard(cardName: 'Security', icon: Icons.security_outlined),
                ],
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.stacked_bar_chart_sharp,size: 50,),
                  Text('No Services Available',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  Text('Be the first to post a service or request a help from the community!',textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
