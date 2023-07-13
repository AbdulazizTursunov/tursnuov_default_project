import 'package:flutter/material.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    super.key,
    required this.categories,
    required this.onCategorySelected,
  });

  final List<String> categories;
  final ValueChanged<String> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
      Container(
      margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
        child:
          TextButton(
            onPressed: () {
              onCategorySelected.call("");
            },
            child: const Text("All"),
          ),),
          ...List.generate(categories.length, (index) {
            return Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
            child: TextButton(
                onPressed: () {
                  onCategorySelected.call(categories[index]);
                },
                child: Text(
                  categories[index],
                ),
            )
            );
          })
        ],
      ),
    );
  }
}
