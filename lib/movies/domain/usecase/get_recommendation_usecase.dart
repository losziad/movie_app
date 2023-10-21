import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/entities/recommendation.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetRecommendationUseCase extends BaseUseCase<List<Recommendation>, RecommendationParameter>{

  final BaseMoviesRepository baseMoviesRepository;


  GetRecommendationUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(RecommendationParameter parameters) async{
   return await baseMoviesRepository.getRecommendation(parameters);
  }

}

class RecommendationParameter extends Equatable {
  final int id;

  const RecommendationParameter({required this.id});

  @override
  List<Object> get props => [id];
}