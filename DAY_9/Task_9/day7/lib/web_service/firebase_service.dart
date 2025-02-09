import 'package:dio/dio.dart';

class FirebaseService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://iti-flutter-winter-default-rtdb.firebaseio.com/';

  // Add a TV Show
  Future<void> addTVShow(Map<String, dynamic> showData) async {
    try {
      await _dio.post('$baseUrl/tvshows.json', data: showData);
    } catch (e) {
      print('Error Adding TV Show: $e');
    }
  }

  // Get all TV Shows
  Future<Map<String, dynamic>> getTVShows() async {
    try {
      final response = await _dio.get('$baseUrl/tvshows.json');
      if (response.statusCode == 200 && response.data != null) {
        return Map<String, dynamic>.from(response.data);
      }
    } catch (e) {
      print('Error Getting TV Shows: $e');
    }
    return {};
  }

  // Delete a TV Show
  Future<void> deleteTVShow(String showId) async {
    try {
      await _dio.delete('$baseUrl/tvshows/$showId.json');
    } catch (e) {
      print('Error Deleting TV Show: $e');
    }
  }

  // Edit a TV Show
  Future<void> editTVShow(String showId, Map<String, dynamic> editShow) async {
    try {
      await _dio.patch('$baseUrl/tvshows/$showId.json', data: editShow);
    } catch (e) {
      print('Error Editing TV Show: $e');
    }
  }
}
