import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/core/utils/constants.dart';
import 'package:movies_app/movies/data/models/movie_model.dart';

abstract class BaseMovieRemoteDataSource{
  Future<List<MovieModel>> getNowPlayingMovies();

  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> getTopRatedMovies();
}
class MovieRemoteDataSource extends BaseMovieRemoteDataSource{
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstance.nowPlayingMoviesPath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((element) => MovieModel.fromJson(element)));
    } else {
      //I didn't use Exception in flutter because the exception provide me just message so I use ServerException to provide every element in the object
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async{
   final response = await Dio().get(ApiConstance.popularMoviesPath);
   if (response.statusCode == 200) {
     return List<MovieModel>.from((response.data['results'] as List)
         .map((element) => MovieModel.fromJson(element)));
   } else {
     //I didn't use Exception in flutter because the exception provide me just message so I use ServerException to provide every element in the object
     throw ServerException(
       errorMessageModel: ErrorMessageModel.fromJson(response.data),
     );
   }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async{
    final response = await Dio().get(ApiConstance.topRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List)
          .map((element) => MovieModel.fromJson(element)));
    } else {
      //I didn't use Exception in flutter because the exception provide me just message so I use ServerException to provide every element in the object
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
