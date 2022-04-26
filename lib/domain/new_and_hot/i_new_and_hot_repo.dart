import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import 'models/new_and_hot_model.dart';

abstract class INewAndHotRepo {
  Future<Either<Failure, NewAndHotModel>> getNewAndHotMovieData();
  Future<Either<Failure, NewAndHotModel>> getNewAndHotTvData();

}
