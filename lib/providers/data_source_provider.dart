import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_db/data/source/remote/api_service.dart';
import 'package:movie_db/data/source/remote/chopper_client.dart';
import 'package:movie_db/data/source/remote_source.dart';

final movieRemoteSourceProvider = Provider<RemoteDataSource>((ref) =>
    RemoteDataSourceImpl(apiService: chopperClient.getService<ApiService>()));
