class ApiConstance{
  static const baseUrl = 'https://api.themoviedb.org/3';

  static const apiKey = '4a696ebce5778f10d3b58057f87743d3';

  static const nowPlayingMoviesPath = '$baseUrl/movie/now_playing?api_key=$apiKey';

  static const popularMoviesPath = '$baseUrl/movie/popular?api_key=$apiKey';

  static const topRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$apiKey';

  static const baseImageUrl = 'https://image.tmdb.org/t/p/w500';

  static  String movieDetailsPath(int movieId)=>'$baseUrl/movie/$movieId?api_key=$apiKey';

  static  String recommendationPath(int movieId)=>'$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';

  static String imageUrl(String path)=> '$baseImageUrl$path';
}