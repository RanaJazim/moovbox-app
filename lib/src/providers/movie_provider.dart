import '../fake_services/movie_service.dart';
import '../models/movie.dart';

export '../models/movie.dart';

class MovieProvider {
  final _service = MovieService();

  Future<List<Movie>> fetchAllMovies() {
    return _service.fetchAll();
  }
}
