import '../fake_date/data.dart';

class MovieService {
  Future<List<Movie>> fetchAll() {
    return Future.delayed(Duration(milliseconds: 5000), () => movies);
  }
}
