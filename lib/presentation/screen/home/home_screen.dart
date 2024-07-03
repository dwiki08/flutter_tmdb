import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_db/domain/model/sort_by.dart';
import 'package:movie_db/presentation/components/app_bar_movie.dart';
import 'package:movie_db/presentation/components/grid_movies.dart';
import 'package:movie_db/presentation/components/loading.dart';
import 'package:movie_db/presentation/providers/movies_provider.dart';
import 'package:movie_db/utils/constants.dart';
import 'package:movie_db/utils/extensions.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  SortBy _selectedValue = SortBy.popularity;

  _itemMenuColor(SortBy value) {
    return _selectedValue == value ? colorAccent : Colors.black;
  }

  _setFetchMovies() {
    ref.read(moviesProvider.notifier).getRemoteMovies(_selectedValue);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _setFetchMovies();
    });
  }

  @override
  Widget build(BuildContext context) {
    log('building home_screen');
    final state = ref.watch(moviesProvider);

    ref.listen(moviesProvider, (_, state) {
      state.showSnackBarOnError(context);
    });

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
              _selectedValue = item;
              _setFetchMovies();
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<SortBy>>[
                PopupMenuItem<SortBy>(
                  value: SortBy.popularity,
                  child: Text('Popular',
                      style:
                          TextStyle(color: _itemMenuColor(SortBy.popularity))),
                ),
                PopupMenuItem<SortBy>(
                  value: SortBy.latest,
                  child: Text('Latest',
                      style: TextStyle(color: _itemMenuColor(SortBy.latest))),
                ),
                PopupMenuItem<SortBy>(
                  value: SortBy.voteCount,
                  child: Text('Vote Count',
                      style:
                          TextStyle(color: _itemMenuColor(SortBy.voteCount))),
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
