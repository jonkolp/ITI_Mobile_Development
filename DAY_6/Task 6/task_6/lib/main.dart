import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  final List<Map<String, dynamic>> stories = [
    {'name': 'Ankur', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Stella', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Rosy', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ani', 'isActive': false, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Youssef', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ahmed', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Hany', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Mohamed', 'isActive': false, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Sayed', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ahmed', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Jess', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ali', 'isActive': false, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Adham', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Khaled', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'LOL', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Nour', 'isActive': false, 'image': 'https://via.placeholder.com/150'},
  ];

  final List<Map<String, dynamic>> chats = [
    {'name': 'Youssef', 'message': 'Let\'s meet tomorrow', 'time': '3:09 PM', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ahmed', 'message': 'Hey What\'s up?', 'time': 'Wed', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Hany', 'message': 'Are you ready for the party...', 'time': 'Thu', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Mohamed', 'message': 'Let\'s go have some fun', 'time': 'Mon', 'isActive': false, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Sayed', 'message': 'Let\'s meet tomorrow', 'time': '3:09 PM', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ahmed', 'message': 'Hey What\'s up?', 'time': 'Wed', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ali', 'message': 'Are you ready for the party...', 'time': 'Thu', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Khaled', 'message': 'Let\'s go have some fun', 'time': 'Mon', 'isActive': false, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Jess', 'message': 'Let\'s meet tomorrow', 'time': '3:09 PM', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Stella', 'message': 'Hey What\'s up?', 'time': 'Wed', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Rosy', 'message': 'Are you ready for the party...', 'time': 'Thu', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ani', 'message': 'Let\'s go have some fun', 'time': 'Mon', 'isActive': false, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Ankur', 'message': 'Let\'s meet tomorrow', 'time': '3:09 PM', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Mahmoud', 'message': 'Hey What\'s up?', 'time': 'Wed', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Adham', 'message': 'Are you ready for the party...', 'time': 'Thu', 'isActive': true, 'image': 'https://via.placeholder.com/150'},
    {'name': 'Peter', 'message': 'Let\'s go have some fun', 'time': 'Mon', 'isActive': false, 'image': 'https://via.placeholder.com/150'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0), // Adjust the left padding
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/joe.jpg'),
          ),
        ),
        title: Text('Chats', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.camera_alt, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.edit, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          // Stories Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildAddStory(),
                  ...stories.map((story) => _buildStoryItem(story)).toList(),
                ],
              ),
            ),
          ),
          Divider(),
          // Chats Section
          Expanded(
            child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return _buildChatItem(chat);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddStory() {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade300,
          child: Icon(Icons.add, size: 30, color: Colors.black),
        ),
        SizedBox(height: 5),
        Text('Your Story', style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildStoryItem(Map<String, dynamic> story) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(story['image']),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 6,
                  backgroundColor: story['isActive'] ? Colors.green : Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(story['name'], style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildChatItem(Map<String, dynamic> chat) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(chat['image']),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 6,
              backgroundColor: chat['isActive'] ? Colors.green : Colors.grey,
            ),
          ),
        ],
      ),
      title: Text(chat['name'], style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(chat['message']),
      trailing: Text(chat['time']),
    );
  }
}
