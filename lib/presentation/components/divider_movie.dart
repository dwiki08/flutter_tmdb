import 'package:flutter/material.dart';
import 'package:movie_db/utils/constants.dart';

class DividerMovie extends StatelessWidget {
  const DividerMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: colorDivider,
      indent: defaultPadding,
      endIndent: defaultPadding,
    );
  }
}
