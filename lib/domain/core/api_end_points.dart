import '../../core/colors/strings.dart';
import '../../infrastructure/api_key.dart' show API_KEY;

class ApiEndPoints {
  static const downloads = "$baseUrl/trending/all/day?api_key=$API_KEY";

  static const search = "$baseUrl/search/movie?api_key=$API_KEY";
}
