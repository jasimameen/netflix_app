import 'package:dartz/dartz.dart';
import '../core/failure.dart';
import 'models/search_resp/search_resp.dart';

abstract class ISearchRepo {
  Future<Either<Failure, SearchResp>> searchMovies({
    required String movieQuery,
  });
}
