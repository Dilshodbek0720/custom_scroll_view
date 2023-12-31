import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';
import 'category_element.dart';


class CategoryDelegateView extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context,double shrinkOffset, bool overlapsContent) {
    return  Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryElement(title: "Бургеры", image: AppImages.burgerImage),
              CategoryElement(title: "Пицца", image: AppImages.pizzaImage),
              CategoryElement(title: "Фрэнч Доги", image: AppImages.frenchImage),
              CategoryElement(title: "Снэки", image: AppImages.snekiImage),
              CategoryElement(title: "Снэки", image: AppImages.snekiImage),
              CategoryElement(title: "Снэки", image: AppImages.snekiImage),
            ],
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 30;

  @override
  double get minExtent => 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate)=>true;
}
