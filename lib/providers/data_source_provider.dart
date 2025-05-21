import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/data/source/remote/dio_client.dart';
import 'package:movie_db/data/source/remote_source.dart';

final movieRemoteSourceProvider = Provider<RemoteDataSource>(
    (ref) => RemoteDataSourceImpl(dioClient: DioClient()));
