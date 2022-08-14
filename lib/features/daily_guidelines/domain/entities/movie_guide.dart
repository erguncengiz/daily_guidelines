import 'package:equatable/equatable.dart';

class MovieGuide extends Equatable {
  final String? movieName;
  final String? movieDirector;
  final String? movieType;
  final String? movieImageLink;

  const MovieGuide(
    this.movieName,
    this.movieDirector,
    this.movieType,
    this.movieImageLink,
  );

  @override
  List<Object?> get props => [
        movieName,
        movieDirector,
        movieType,
        movieImageLink,
      ];
}
