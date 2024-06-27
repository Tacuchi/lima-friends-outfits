import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://example.com/avatar.jpg'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('Change Avatar'),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Personal Information',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Text('Name'),
                    trailing: const Text('John Doe'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    title: const Text('Email'),
                    trailing: const Text('john.doe@example.com'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    title: const Text('Phone Number'),
                    trailing: const Text('(123) 456-7890'),
                    onTap: () {
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Security Information',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Text('Change Password'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    title: const Text('Two-Factor Authentication'),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Account Actions',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Text('Logout'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    title: const Text('Delete Account'),
                    onTap: () {
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
