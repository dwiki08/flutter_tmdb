import 'package:flutter/material.dart';
import 'package:movie_db/utils/constants.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: defaultPadding,
          ),
          Text('Loading...')
        ],
      ),
    );
  }
}
