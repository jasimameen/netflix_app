import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/core/api_end_points.dart';
import 'package:netflix_project/domain/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/search/i_search_repo.dart';
import 'package:netflix_project/domain/search/models/search_resp/search_resp.dart';

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
