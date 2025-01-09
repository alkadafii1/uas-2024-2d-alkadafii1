import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert), 
            onPressed: () {
            
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            const Text(
              'Top Courses',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Daftar pesan
            _buildMessageItem('assets/person1.jpg', 'User  1', 'This is a description for User 1.'),
            _buildMessageItem('assets/person2.jpg', 'User  2', 'This is a description for User 2.'),
            _buildMessageItem('assets/person3.jpeg', 'User  3', 'This is a description for User 3.'),
            _buildMessageItem('assets/person4.jpeg', 'User  4', 'This is a description for User 4.'),
            
          ],
        ),
      ),
    );
  }

  Widget _buildMessageItem(String logoPath, String userName, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: <Widget>[
        
          Image.asset(
            logoPath,
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 10), 
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey, 
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}