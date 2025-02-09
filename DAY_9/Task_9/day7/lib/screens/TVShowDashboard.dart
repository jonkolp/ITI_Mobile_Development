// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:day_7/web_service/firebase_service.dart';

class TVShowDashboard extends StatefulWidget {
  const TVShowDashboard({super.key});

  @override
  State<TVShowDashboard> createState() => _TVShowDashboardState();
}

class _TVShowDashboardState extends State<TVShowDashboard> {
  final FirebaseService _firebaseService = FirebaseService();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _seasonsController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _votesController = TextEditingController();

  Map<String, dynamic> tvShows = {};
  bool _isEditing = false;
  String? _editedShowId;

  @override
  void initState() {
    super.initState();
    getTVShowsData();
  }

  void _saveData() async {
    final name = _nameController.text;
    final seasons = _seasonsController.text;
    final imageUrl = _imageController.text;
    final votes = _votesController.text;

    if (name.isEmpty || seasons.isEmpty || imageUrl.isEmpty || votes.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please fill in all fields!")),
      );
      return;
    }

    var newShow = {
      'name': name,
      'seasons': int.parse(seasons),
      'imageUrl': imageUrl,
      'votes': int.parse(votes),
    };

    if (_isEditing && _editedShowId != null) {
      await _firebaseService.editTVShow(_editedShowId!, newShow);
      setState(() {
        _isEditing = false;
        _editedShowId = null;
      });
    } else {
      await _firebaseService.addTVShow(newShow);
    }

    _nameController.clear();
    _seasonsController.clear();
    _imageController.clear();
    _votesController.clear();
    getTVShowsData();
  }

  void getTVShowsData() async {
    var response = await _firebaseService.getTVShows();
    setState(() {
      tvShows = response;
    });
  }

  void deleteTVShow(String id) async {
    await _firebaseService.deleteTVShow(id);
    getTVShowsData();
  }

  void _editTVShow(String showId, Map<String, dynamic> showData) {
    setState(() {
      _isEditing = true;
      _editedShowId = showId;
      _nameController.text = showData['name'];
      _seasonsController.text = showData['seasons'].toString();
      _imageController.text = showData['imageUrl'];
      _votesController.text = showData['votes'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TV Show Dashboard'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'TV Show Name'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _seasonsController,
              decoration: InputDecoration(labelText: 'Number of Seasons'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _imageController,
              decoration: InputDecoration(labelText: 'Image URL'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _votesController,
              decoration: InputDecoration(labelText: 'Votes'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _saveData,
              child: Text(_isEditing ? 'Edit TV Show' : 'Add TV Show'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tvShows.length,
                itemBuilder: (context, index) {
                  final showId = tvShows.keys.elementAt(index);
                  final showData = tvShows[showId];

                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          showData['imageUrl'],
                          width: 60,
                          height: 80,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Icon(Icons.image_not_supported, size: 60),
                        ),
                      ),
                      title: Text(
                        showData['name'],
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Seasons: ${showData['seasons']}  |  ⭐ Votes: ${showData['votes']}',
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              _editTVShow(showId, showData);
                            },
                            icon: Icon(Icons.edit, color: Colors.blue),
                          ),
                          IconButton(
                            onPressed: () {
                              deleteTVShow(showId);
                            },
                            icon: Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
