import '../../core/colors/strings.dart';
import '../../infrastructure/api_key.dart' show API_KEY;

class ApiEndPoints {
  static const trending = "$baseUrl/trending/all/day?api_key=$API_KEY";

  static const search = "$baseUrl/search/movie?api_key=$API_KEY";

  static const discoverMovie = "$baseUrl/discover/movie?api_key=$API_KEY";

  static const discoverTv = "$baseUrl/discover/tv?api_key=$API_KEY";
}
