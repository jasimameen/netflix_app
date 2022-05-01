import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../domain/trending/i_trending_repo.dart';
import '../../domain/trending/models/trending_data.dart';

import '../../domain/core/api_end_points.dart';
import '../../domain/core/failure.dart';

@LazySingleton(as: ITrendingRepo)
class TrendingRepoImpl implements ITrendingRepo {
  @override
  Future<Either<Failure, List<TrendingData>>> getTrendingData() async {
    try {
      final Response responce =
          await Dio(BaseOptions()).get(ApiEndPoints.trending);

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final trendingList = (responce.data['results'] as List)
            .map((json) {
              return TrendingData.fromJson(json as Map<String, dynamic>);
            })
            .toList();

        return Right(trendingList);
      } else {
        throw const Left(Failure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(Failure.clientFailure());
    }
  }
}
