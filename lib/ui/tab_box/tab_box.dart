import 'package:flutter/material.dart';

import 'package:tursnuov_default_project/ui/tab_box/products/products_screen.dart';
import 'package:tursnuov_default_project/ui/tab_box/users/user_screen.dart';

import '../../network/providers/api_provider.dart';
import '../../network/repositories/category_repo.dart';
import '../../network/repositories/product_repo.dart';
import '../../network/repositories/user_repo.dart';

class TabBox extends StatefulWidget {
  const TabBox({Key? key, required this.apiProvider}) : super(key: key);

  final ApiProvider apiProvider;

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  List<Widget> screens = [];
  int activePage = 0;

  late ProductRepo productRepo;
  late UserRepo userRepo;
  late CategoryRepo categoryRepo;

  @override
  void initState() {
    productRepo = ProductRepo(apiProvider: widget.apiProvider);
    userRepo = UserRepo(apiProvider: widget.apiProvider);
    categoryRepo = CategoryRepo(apiProvider: widget.apiProvider);

    screens.add(ProductsScreen(
      productRepo: productRepo,
      categoryRepo: categoryRepo,
    ));
    screens.add(UserScreen(
      userRepo: userRepo,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: activePage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activePage,
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Colors.black,
            ),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Colors.black,
            ),
            label: "Users",
          ),
        ],
      ),
    );
  }
}
