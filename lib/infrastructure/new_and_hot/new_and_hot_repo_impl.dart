import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_end_points.dart';
import '../../domain/core/failure.dart';
import '../../domain/new_and_hot/i_new_and_hot_repo.dart';
import '../../domain/new_and_hot/models/new_and_hot_model.dart';

@LazySingleton(as: INewAndHotRepo)
class NewAndHotRepoImpl implements INewAndHotRepo {
  @override
  Future<Either<Failure, NewAndHotModel>> getNewAndHotMovieData() async {
    try {
      final responce =
          await Dio(BaseOptions()).get(ApiEndPoints.newAndHotMovie);

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = NewAndHotModel.fromMap(responce.data);
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
  Future<Either<Failure, NewAndHotModel>> getNewAndHotTvData() async {
    try {
      final responce = await Dio(BaseOptions()).get(ApiEndPoints.newAndHotTv);

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = NewAndHotModel.fromMap(responce.data);
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
