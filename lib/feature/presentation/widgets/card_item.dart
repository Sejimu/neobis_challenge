import 'package:flutter/material.dart';
import 'package:neobis_challenge/data/model/productCategoryItems.dart';
import 'package:neobis_challenge/data/model/productCategoryMotelItem.dart';
import 'package:neobis_challenge/feature/presentation/widgets/cards.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductCategoryMotelItem> items = ProductCategoryItems.items;
    return GridView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => Cards(
        img: items[index].image,
        text: items[index].name,
      ),
    );
  }
}
