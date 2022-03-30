import 'package:dartz/dartz.dart';

import '../core/failure.dart';
import 'models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<Failure, List<Downloads>>> getDownloadsImage();
}
