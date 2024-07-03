import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem(
      {super.key,
      required this.svgAsset,
      required this.value,
      required this.label});

  final String svgAsset;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              svgAsset,
              height: 20,
              width: 20,
            ),
            const SizedBox(width: defaultPadding / 4),
            Text(value, style: const TextStyle(color: textTitleColor))
          ],
        ),
        const SizedBox(
          height: defaultPadding / 4,
        ),
        Text(label),
      ],
    );
  }
}
