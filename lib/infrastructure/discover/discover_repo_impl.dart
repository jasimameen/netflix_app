import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/discover/i_discover_repo.dart';
import 'package:netflix_project/domain/discover/models/discover_model.dart';

import '../../domain/core/api_end_points.dart';
import '../../domain/core/failure.dart';

@LazySingleton(as: IDiscoverRepo)
class NewAndHotRepoImpl implements IDiscoverRepo {
  @override
  Future<Either<Failure, DiscoverResults>> getDiscoverMovieData() async {
    try {
      final responce = await Dio(BaseOptions()).get(ApiEndPoints.discoverMovie);

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = DiscoverResults.fromJson(responce.data);
        log(result.results[0].toString());
        return Right(result);
      } else {
        return const Left(Failure.serverFailure());
      }
    } catch (e) {
      log("Error in NewAndHot Impl => " + e.toString());
      return const Left(Failure.clientFailure());
    }
  }

  @override
  Future<Either<Failure, DiscoverResults>> getDiscoverTvData() async {
    try {
      final responce = await Dio(BaseOptions()).get(ApiEndPoints.discoverTv);

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = DiscoverResults.fromJson(responce.data);
        log(result.results[0].toString());
        return Right(result);
      } else {
        return const Left(Failure.serverFailure());
      }
    } catch (e) {
      log("Error in NewAndHot Impl => " + e.toString());
      return const Left(Failure.clientFailure());
    }
  }
}
