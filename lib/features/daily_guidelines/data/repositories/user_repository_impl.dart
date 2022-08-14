import 'package:daily_guidelines/core/network/network_info.dart';
import 'package:daily_guidelines/features/daily_guidelines/domain/entities/movie_guide.dart';
import 'package:daily_guidelines/core/errors/failures.dart';
import 'package:daily_guidelines/features/daily_guidelines/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class UserRepositoryImpl implements UserRepository {
  final NetworkInfo networkInfo;

  UserRepositoryImpl({
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, MovieGuide>> getMovie() async {
    if (await networkInfo.isConnected) {
      // TODO: request sending is here!
      throw ExecutionFailure();
      // return Right(MovieGuide());
    } else {
      return Left(ExecutionFailure());
    }
  }
}
