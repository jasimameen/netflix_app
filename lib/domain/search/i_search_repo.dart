import 'package:dartz/dartz.dart';
import 'package:netflix_project/domain/core/failure.dart';
import 'package:netflix_project/domain/search/models/search_resp/search_resp.dart';

abstract class ISearchRepo {
  Future<Either<Failure, SearchResp>> searchMovies({
    required String movieQuery,
  });
}
