import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import 'models/discover_model.dart';

abstract class IDiscoverRepo {
  Future<Either<Failure, DiscoverResults>> getDiscoverMovieData();
  Future<Either<Failure, DiscoverResults>> getDiscoverTvData();
}
