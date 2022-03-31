import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/api_end_points.dart';
import '../../domain/core/failure.dart';
import '../../domain/downloads/i_downloads_repo.dart';
import '../../domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepoImpl implements IDownloadsRepo {
  @override
  Future<Either<Failure, List<Downloads>>> getDownloadsImage() async {
    try {
      final Response responce =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);

      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final downloadsList = (responce.data['results'] as List)
            .map((json) {
              return Downloads.fromJson(json as Map<String, dynamic>);
            })
            .toList();

        return Right(downloadsList);
      } else {
        throw const Left(Failure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(Failure.clientFailure());
    }
  }
}
