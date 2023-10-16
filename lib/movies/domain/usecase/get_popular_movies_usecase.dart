import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUseCase{
  final BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  //No Parameter because the api consist of base url, end point and api key
  Future<Either<Failure, List<Movie>>>execute()async{
    return await baseMoviesRepository.getPopularMovies();
  }
}