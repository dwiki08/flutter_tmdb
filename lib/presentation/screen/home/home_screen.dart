import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_db/domain/model/sort_by.dart';
import 'package:movie_db/presentation/components/app_bar_movie.dart';
import 'package:movie_db/presentation/components/grid_movies.dart';
import 'package:movie_db/presentation/components/loading.dart';
import 'package:movie_db/utils/constants.dart';
import 'package:movie_db/utils/extensions.dart';

import '../../providers/movie_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  SortBy _selectedValue = SortBy.popularity;

  @override
  Widget build(BuildContext context) {
    log('building home_screen');
    final moviesProvider = getMoviesProvider(sortBy: _selectedValue);
    final state = ref.watch(moviesProvider);

    ref.listen(moviesProvider, (_, next) {
      next.showSnackBarOnError(context);
    });

    itemMenuColor(SortBy value) {
      return _selectedValue == value ? textColor : Colors.black;
    }

    gridMovies() {
      if (state.isLoading) {
        return const Loading();
      } else if (state.hasData) {
        return GridMovies(movies: state.value ?? []);
      }
    }

    return Scaffold(
      appBar: AppBarMovie(
        title: widget.title,
        actions: [
          PopupMenuButton<SortBy>(
            icon: SvgPicture.asset('assets/icons/ic_sort.svg'),
            onSelected: (SortBy item) {
              setState(() => _selectedValue = item);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<SortBy>>[
                PopupMenuItem<SortBy>(
                  value: SortBy.popularity,
                  child: Text('Popular',
                      style:
                          TextStyle(color: itemMenuColor(SortBy.popularity))),
                ),
                PopupMenuItem<SortBy>(
                  value: SortBy.latest,
                  child: Text('Latest',
                      style: TextStyle(color: itemMenuColor(SortBy.latest))),
                ),
                PopupMenuItem<SortBy>(
                  value: SortBy.voteCount,
                  child: Text('Vote Count',
                      style: TextStyle(color: itemMenuColor(SortBy.voteCount))),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: defaultPadding / 2, right: defaultPadding / 2),
        child: gridMovies(),
      ),
    );
  }
}
