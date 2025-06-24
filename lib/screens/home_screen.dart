import 'package:flutter/material.dart';
import '../widgets/category_icon.dart';
import '../widgets/service_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),


      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello 👋", style: TextStyle(fontSize: 24)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryIcon(icon: Icons.cleaning_services, label: 'Cleaning'),
                  CategoryIcon(icon: Icons.format_paint, label: 'Painting'),
                  CategoryIcon(icon: Icons.plumbing, label: 'Plumbing'),
                  CategoryIcon(icon: Icons.local_laundry_service, label: 'Laundry'),
                ],
              ),
              SizedBox(height: 20),
              ServiceCard(
                image: 'assets/images/cleaning.jpg',
                title: 'Home Cleaning Services',
                location: 'Miami, FL',
                price: '\$190',
                rating: 4.5,
              ),
              SizedBox(height: 10),
              ServiceCard(
                image: 'assets/images/plumbing.jpg',
                title: 'Reliable Plumbing',
                location: 'Quick and Efficient',
                price: '\$220',
                rating: 4.7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
