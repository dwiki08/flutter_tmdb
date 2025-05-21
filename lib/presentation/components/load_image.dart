import 'package:flutter/material.dart';

class LoadImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;

  const LoadImage({
    super.key,
    required this.url,
    this.width = double.infinity,
    this.height = double.infinity
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      width: width,
      height: height,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(child: CircularProgressIndicator());
      },
      errorBuilder: (context, error, stackTrace) {
        if (error is Exception) {
          return Container(color: Colors.grey);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
