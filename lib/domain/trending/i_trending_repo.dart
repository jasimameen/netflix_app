import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import 'models/trending_data.dart';

abstract class ITrendingRepo {
  Future<Either<Failure, List<TrendingData>>> getTrendingData();
}
