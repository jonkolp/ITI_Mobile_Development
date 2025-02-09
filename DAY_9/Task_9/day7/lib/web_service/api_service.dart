import 'package:day_7/model/tv.dart';
import 'package:day_7/model/product.dart';
import 'package:dio/dio.dart';

class ApiService {
  // final Dio _dio = Dio();
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://fakestoreapi.com'));

  Future<List<TVShow>> getTVShows(int pageNumber) async {
   
    try {
      final response = await _dio.get(
          'https://api.themoviedb.org/3/tv/top_rated?api_key=d6f2c9b76af7a6729e5a305a9bdd0e23&page=$pageNumber');
      if (response.statusCode == 200) {
        return (response.data['results'] as List)
            .map((TVShowjson) => TVShow.fromJson(TVShowjson))
            .toList();
      } else {
        throw Exception('Error  casting data');
      }
    } catch (e) {
      throw Exception('Error getting Data');
    }
  }
  Future<List<TVShow>> getRecommendedTVShows(int tvShowId) async {
    try {
      final response = await _dio.get(
          'https://api.themoviedb.org/3/tv/$tvShowId/recommendations?api_key=d6f2c9b76af7a6729e5a305a9bdd0e23');
      if (response.statusCode == 200) {
        return (response.data['results'] as List)
            .map((TVShowjson) => TVShow.fromJson(TVShowjson))
            .toList();
      } else {
        throw Exception('Error casting data');
      }
    } catch (e) {
      throw Exception('Error getting recommended TV shows');
    }
  }

  Future<List<dynamic>> getTVShowSeasons(int tvShowId) async {
    try {
      final response = await _dio.get(
          'https://api.themoviedb.org/3/tv/$tvShowId?api_key=d6f2c9b76af7a6729e5a305a9bdd0e23');
      if (response.statusCode == 200) {
        return response.data['seasons'] as List;
      } else {
        throw Exception('Error fetching seasons');
      }
    } catch (e) {
      throw Exception('Error getting TV show seasons');
    }
  }

  Future<List<Product>> getProducts() async {
    // Error handling
    try {
      final response = await _dio.get('/products');
      // non-blocking
      // async handling
      // then-catch
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((productJson) => Product.fromJson(productJson))
            .toList();
      } else {
        throw Exception('Error  casting data');
      }
    } catch (err) {
      throw Exception('Error getting Data:$err');
    }
  }

  Future<Product> getProductById(int id) async {
    try {
      final response = await _dio.get('/products/$id');
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      }else{
         throw Exception('Error  casting data');
      }
    } catch (err) {
      throw Exception('Error getting Data:$err');
    }
  }
}
