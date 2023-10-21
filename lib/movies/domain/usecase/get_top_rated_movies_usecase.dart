import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase<List<Movie>, NoParameter>{
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  //No Parameter because the api consist of base url, end point and api key
  @override
  Future<Either<Failure, List<Movie>>>call(NoParameter noParameter)async{
    return await baseMoviesRepository.getTopRatedMovies();
  }
}