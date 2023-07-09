import 'package:tursnuov_default_project/network/universal_repository.dart';
import '../model_api/api_model.dart';
import 'api_provider.dart';

class ApiRepository {
  final ApiProvider apiProvider;

  ApiRepository({required this.apiProvider});

  Future<List<GamesItem>> fetchGameModel() async {

    UniversalRepository universalResponse = await apiProvider.getGamesInfo();
    if (universalResponse.error.isEmpty) {
      return universalResponse.data as List<GamesItem>;
    }
    return [];
  }
}
