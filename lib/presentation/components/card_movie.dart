import 'package:flutter/material.dart';
import 'package:movie_db/domain/model/movie_model.dart';
import 'package:movie_db/utils/constants.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({super.key, required this.movie, required this.onClick});

  final Movie movie;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding / 2),
      child: Card(
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => onClick.call(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Image.network(
                  urlImage500 + movie.posterUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Text(
                  movie.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
