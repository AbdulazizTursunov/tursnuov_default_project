import 'package:flutter/material.dart';
import 'package:tursnuov_default_project/data/model/product/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key, required this.productModel}) : super(key: key);
  final ProductModel productModel;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("product screen"),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 325,
                height: 250,
                child: Image.network(widget.productModel.image),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(

                children: [
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 220,
                    child: Text(
                      widget.productModel.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.7),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 220,
                    child: Text(
                     "${widget.productModel.price.toString()} \$",
                      style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.7),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 220,
                    child: Text(
                      "${widget.productModel.rating.toString()} ",
                      style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.7),
                    ),
                  ),

                  SizedBox(
                    width: 220,
                    child: Text(
                      widget.productModel.description,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.7),
                    ),
                  ),


                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
