
import 'package:tursnuov_default_project/data/local/shared_preferences.dart';

import '../../data/model/universal_model.dart';
import '../../data/model/user/user_model.dart';
import '../providers/api_provider.dart';

class UserRepo {
  UserRepo({required this.apiProvider});

  final ApiProvider apiProvider;

  Future<List<UserModel>> getAllUsers({
    required String username,
    required String password,
  }) async {
    UniversalResponse universalResponse = await apiProvider.getAllUsers();
    if (universalResponse.error.isEmpty) {
      return universalResponse.data as List<UserModel>;
    }
    return [];
  }

  Future<void> logOutUser() async{
    StorageRepository.deleteString("token");
  }
}
