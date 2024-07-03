import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/presentation/components/app_bar_movie.dart';
import 'package:movie_db/utils/constants.dart';

import 'components/description.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.movie});

  final Movie movie;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final movie = widget.movie;
    final size = MediaQuery.sizeOf(context);
    const ratio = 0.25;
    return Scaffold(
      appBar: AppBarMovie(
        title: movie.title,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/ic_share.svg',
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  urlImageOriginal + (movie.backdropUrl ?? ''),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: size.height * ratio + 24,
                ),
                DescriptionMovie(size: size, ratio: ratio, movie: movie),
              ],
            )
          ],
        ),
      ),
    );
  }
}
