import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tursnuov_default_project/ui/tab_box/products/widgets/category_selector.dart';
import 'package:tursnuov_default_project/ui/tab_box/products/widgets/product_detail.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../data/model/product/product_model.dart';
import '../../../network/repositories/category_repo.dart';
import '../../../network/repositories/product_repo.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({
    Key? key,
    required this.productRepo,
    required this.categoryRepo,
  }) : super(key: key);

  final ProductRepo productRepo;
  final CategoryRepo categoryRepo;

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  String activeCategoryName = "";

  List<ProductModel> products = [];
  List<String> categories = [];

  bool isLoading = false;

  _updateProducts() async {
    setState(() {
      isLoading = true;
    });
    products =
        await widget.productRepo.getProductsByCategory(activeCategoryName);
    setState(() {
      isLoading = false;
    });
  }

  String? selectedMenu;

  _init() async {
    categories = await widget.categoryRepo.getAllCategories();
  }

  @override
  void initState() {
    _init();
    _updateProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton<String>(
            initialValue: selectedMenu,
            // Callback that sets the selected popup menu item.
            onSelected: (String item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: "",
                child: Text('default'),
              ),
              const PopupMenuItem<String>(
                value: "",
                child: Text('asc'),
              ),
              const PopupMenuItem<String>(
                value: "",
                child: Text('desc'),
              ),
            ],
          ),
        ],
        title: const Text("Products screen"),
      ),
      body: Column(
        children: [
          categories.isNotEmpty
              ? CategorySelector(
                  categories: categories,
                  onCategorySelected: (selectedCategory) {
                    activeCategoryName = selectedCategory;
                    _updateProducts();
                  },
                )
              : const Center(child: CircularProgressIndicator()),
          Expanded(
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(children: [
                    const SizedBox(
                      height: 10,
                    ),
                    ...List.generate(
                      products.length,
                      (index) {
                        ProductModel product = products[index];
                        return ZoomTapAnimation(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailScreen(productModel: products[index]),));
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            height: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo),
                            child: Row(
                              children: [
                                Container(
                                  width: 110,
                                  height: 210,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child:Image.network(product.image),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 220,
                                        child: Text(
                                          product.title,
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.7),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 220,
                                        child: Text(
                                          "${product.price.toString()}\$",
                                          style: const TextStyle(
                                              color: Colors.orange,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.7),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        width: 220,
                                        child: Text(
                                          product.rating.toString(),
                                          style: const TextStyle(
                                              color: Colors.orange,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0.7),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ]),
          ),
        ],
      ),
    );
  }
}
