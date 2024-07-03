import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/domain/model/error_result.dart';

extension AsyncValueUI on AsyncValue<void> {
  bool get isLoading => this is AsyncLoading<void>;

  bool get hasData => asData != null;

  void showSnackBarOnError(BuildContext context) => whenOrNull(
    error: (error, _) {
      final e = error as ErrorResult;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${e.message}: ${e.code}')),
      );
    },
  );
}