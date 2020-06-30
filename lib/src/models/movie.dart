import './caste.dart';

class Movie {
  String id;
  String title;
  String description;
  String imgUrl;
  int watchNumber;
  double rating;
  List<String> genre;
  List<Caste> caste;

  Movie({
    this.id,
    this.title,
    this.description,
    this.imgUrl,
    this.watchNumber,
    this.rating,
    this.genre,
    this.caste,
  });
}
