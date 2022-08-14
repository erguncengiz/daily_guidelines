import 'package:daily_guidelines/features/daily_guidelines/domain/entities/movie_guide.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class UserRepository {
  Future<Either<Failure, MovieGuide>> getMovie();
}
