import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_end_points.dart';
import '../../domain/core/failure.dart';
import '../../domain/search/i_search_repo.dart';
import '../../domain/search/models/search_resp/search_resp.dart';

@LazySingleton(as: ISearchRepo)
class SearchRepoImpl implements ISearchRepo {
  @override
  Future<Either<Failure, SearchResp>> searchMovies({
    required String movieQuery,
  }) async {
    try {
      final responce = await Dio(BaseOptions()).get(
        ApiEndPoints.search,
        queryParameters: {
          'query': movieQuery,
        },
      );

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = SearchResp.fromMap(responce.data);
        return Right(result);
      } else {
        return const Left(Failure.serverFailure());
      }
    } catch (e) {
      log("Error in Search Impl => " + e.toString());
      return const Left(Failure.clientFailure());
    }
  }
}
