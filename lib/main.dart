import 'package:flutter/material.dart';
import 'package:tursnuov_default_project/network/providers/api_provider.dart';
import 'package:tursnuov_default_project/network/repositories/category_repo.dart';
import 'package:tursnuov_default_project/network/repositories/product_repo.dart';
import 'package:tursnuov_default_project/ui/tab_box/login_screen/login_screen.dart';
import 'package:tursnuov_default_project/ui/tab_box/products/products_screen.dart';
import 'package:tursnuov_default_project/ui/tab_box/tab_box.dart';
import 'data/local/shared_preferences.dart';
import 'expansion_file/expansion_file.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await StorageRepository.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: false,
      ),
      home: TabBox(apiProvider: ApiProvider(),)//ProductsScreen(productRepo: ProductRepo(apiProvider: ApiProvider()), categoryRepo: CategoryRepo(apiProvider: ApiProvider()),),
    );
  }
}
