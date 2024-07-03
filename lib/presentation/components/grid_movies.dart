import 'package:flutter/material.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/presentation/components/card_movie.dart';
import 'package:movie_db/presentation/screen/detail/detail_screen.dart';
import 'package:movie_db/utils/constants.dart';

class GridMovies extends StatelessWidget {
  const GridMovies({super.key, required this.movies});

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: movies.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
          mainAxisSpacing: 0,
          crossAxisSpacing: defaultPadding / 2),
      itemBuilder: (context, index) => CardMovie(
        movie: movies[index],
        onClick: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(movie: movies[index]),
          ),
        ),
      ),
    );
  }
}
