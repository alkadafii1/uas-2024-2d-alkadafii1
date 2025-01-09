import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
            Center(
              child: CircleAvatar(
                radius: 50, 
                backgroundImage: AssetImage('assets/person1.jpg'),
              ),
            ),
            const SizedBox(height: 20),

        
            const Text(
              'Video Preference',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            _buildOptionRow('Download option', context),
            _buildOptionRow('Video playback option', context),
            const SizedBox(height: 20),

            
            const Text(
              'Account Settings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            _buildOptionRow('Account security', context),
            _buildOptionRow('Email notifications preference', context),
            _buildOptionRow('Learning Reminders', context),
            const SizedBox(height: 20),

          
            const Text(
              'About Learnout',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            _buildOptionRow('About Learnout', context),
            _buildOptionRow('Frequently Asked Questions', context),
            _buildOptionRow('Share the Learnout App', context),
            const SizedBox(height: 20),

        
            Center(
              child: TextButton(
                onPressed: () {
                  _showLogoutDialog(context);
                },
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionRow(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title),
          const Icon(Icons.arrow_forward_ios), 
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Log out from Learnout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
            
                Navigator.of(context).pop();
              },
              child: const Text('Log Out'),
            ),
          ],
        );
      },
    );
  }
}