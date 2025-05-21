import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/presentation/components/divider_movie.dart';
import 'package:movie_db/presentation/providers/movie_provider.dart';
import 'package:movie_db/utils/constants.dart';
import 'package:movie_db/utils/extensions.dart';

import 'description_item.dart';

class DescriptionMovie extends ConsumerStatefulWidget {
  const DescriptionMovie(
      {super.key,
      required this.size,
      required this.movie,
      required this.ratio});

  final Size size;
  final Movie movie;
  final double ratio;

  @override
  ConsumerState<DescriptionMovie> createState() => _DescriptionMovieState();
}

class _DescriptionMovieState extends ConsumerState<DescriptionMovie> {
  @override
  Widget build(BuildContext context) {
    log('build description');

    const double radius = 24;
    final posterWidth = widget.size.height * 0.2;

    final getMovie = getMovieProvider(id: widget.movie.id);

    ref.listen(getMovie, (_, next) {
      next.showSnackBarOnError(context);
    });

    Widget consumerGenres() {
      return Consumer(builder: (context, ref, child) {
        final genres = ref.watch(getMovie.select((s) => s.value?.genres)) ?? [];
        List<Chip> chips = [];
        for (final genre in genres) {
          chips.add(
            Chip(
              label: Text(
                genre.name,
                style: const TextStyle(fontSize: 12),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
            ),
          );
        }
        return Wrap(
          alignment: WrapAlignment.center,
          runSpacing: defaultPadding / 2,
          spacing: defaultPadding / 2,
          children: chips,
        );
      });
    }

    return Stack(children: [
      Container(
        height: widget.size.height,
        margin: EdgeInsets.only(top: widget.size.height * widget.ratio),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: widget.size.height * 0.15 + radius,
              width: widget.size.width,
              padding: EdgeInsets.only(
                  left: posterWidth + defaultPadding * 1.5,
                  right: defaultPadding / 2,
                  top: defaultPadding),
              child: Text(
                widget.movie.title,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: consumerGenres(),
            ),
            const DividerMovie(),
            Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DescriptionItem(
                    svgAsset: 'assets/icons/ic_star.svg',
                    value: '${widget.movie.voteRate}',
                    label: '${widget.movie.voteCount} votes',
                  ),
                  DescriptionItem(
                    svgAsset: 'assets/icons/ic_language.svg',
                    value: widget.movie.language,
                    label: 'Language',
                  ),
                  DescriptionItem(
                    svgAsset: 'assets/icons/ic_fire.svg',
                    value: widget.movie.releaseDate,
                    label: 'Release date',
                  ),
                ],
              ),
            ),
            const DividerMovie(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: defaultPadding),
                  Text(
                    'Overview',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: textTitleColor),
                  ),
                  const SizedBox(height: defaultPadding),
                  Text(widget.movie.overview)
                ],
              ),
            )
          ],
        ),
      ),
      Card(
        margin: EdgeInsets.only(
            top: (widget.size.height * widget.ratio / 2), left: defaultPadding),
        clipBehavior: Clip.antiAlias,
        elevation: 4,
        child: Image.network(urlImage500 + widget.movie.posterUrl,
            fit: BoxFit.cover,
            width: posterWidth,
            errorBuilder: (context, error, stackTrace) =>
                Container(color: Colors.grey)),
      ),
    ]);
  }
}
