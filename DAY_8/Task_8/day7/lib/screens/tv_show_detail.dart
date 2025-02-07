// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:day_7/model/tv.dart';
import 'package:day_7/web_service/api_service.dart';

class TVShowDetailPage extends StatefulWidget {
  final TVShow tvShow;
  const TVShowDetailPage({super.key, required this.tvShow});

  @override
  State<TVShowDetailPage> createState() => _TVShowDetailPageState();
}

class _TVShowDetailPageState extends State<TVShowDetailPage> {
  late Future<List<TVShow>> recommendedShows;
  late Future<List<dynamic>> seasons;

  @override
  void initState() {
    super.initState();
    recommendedShows = ApiService().getRecommendedTVShows(widget.tvShow.id);
    seasons = ApiService().getTVShowSeasons(widget.tvShow.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tvShow.name),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'https://image.tmdb.org/t/p/w500${widget.tvShow.posterPath}',
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(widget.tvShow.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('First Air Date: ${widget.tvShow.firstAirDate}'),
            Text('Language: ${widget.tvShow.originalLanguage}'),
            Text('Popularity: ${widget.tvShow.popularity}'),
            Text('Vote Average: ${widget.tvShow.voteAverage} (${widget.tvShow.voteCount} votes)'),
            SizedBox(height: 10),
            Text(widget.tvShow.overview),
            SizedBox(height: 20),
            Text("Seasons", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            FutureBuilder<List<dynamic>>(
              future: seasons,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text("Error loading seasons");
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Text("No seasons available");
                }
                return Column(
                  children: snapshot.data!.map((season) {
                    return ListTile(
                      title: Text(season['name']),
                      subtitle: Text("Episodes: ${season['episode_count']}"),
                    );
                  }).toList(),
                );
              },
            ),
            SizedBox(height: 20),
            Text("Recommended Shows", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            FutureBuilder<List<TVShow>>(
              future: recommendedShows,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text("Error loading recommended shows");
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Text("No recommendations available");
                }
                return Column(
                  children: snapshot.data!.map((show) {
                    return ListTile(
                      leading: Image.network('https://image.tmdb.org/t/p/w92${show.posterPath}'),
                      title: Text(show.name),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
