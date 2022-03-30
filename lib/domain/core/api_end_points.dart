import '../../core/colors/strings.dart';
import '../../infrastructure/api_key.dart' show API_KEY;

class ApiEndPoints {
  static const downloads =
      "$BASE_URL/trending/all/day?api_key=$API_KEY";
}
