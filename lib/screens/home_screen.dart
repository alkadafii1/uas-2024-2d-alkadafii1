import 'package:flutter/material.dart';
import 'package:template_project/screens/profile_screen.dart';
import 'message_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final String userName;

  HomeScreen({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcome $userName',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              Container(
                height: 250, 
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/hero.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              const Text(
                'Keep Moving Up',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'This is a description about the platform and what it offers to the users.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

            
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  _buildCategoryButton('Development'),
                  _buildCategoryButton('IT & Software'),
                  _buildCategoryButton('UI/UX'),
                  _buildCategoryButton('Business'),
                  _buildCategoryButton('Finance'),
                  _buildCategoryButton('Personal'),
                ],
              ),
              const SizedBox(height: 10),

              const Text(
                'Top Courses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              SizedBox(
                height: 100, 
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildPersonImage('assets/person1.jpg'),
                    _buildPersonImage('assets/person2.jpg'),
                    _buildPersonImage('assets/person3.jpeg'),
                    _buildPersonImage('assets/person4.jpeg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 63, 226, 255), 
        selectedItemColor: const Color.fromARGB(255, 31, 2, 255),
        unselectedItemColor: const Color.fromARGB(179, 0, 0, 0), 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Buku',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
         
              break;
            case 1:
        
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
          }
        },
      ),
    );
  }

  Widget _buildCategoryButton(String title) {
    return SizedBox(
      width: 80, 
      child: ElevatedButton(
        onPressed: () {
        
        },
        child: Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0), 
            fontSize: 14, 
          ),
        ),
      ),
    );
  }

  Widget _buildPersonImage(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}