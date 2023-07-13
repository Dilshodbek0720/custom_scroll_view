import 'package:custom_scroll_view/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';
import 'category_element.dart';


class CategoryDelegateView extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context,double shrinkOffset, bool overlapsContent) {
    double height = MediaQuery.of(context).size.height;
    return  Container(
      height: 30*height/812,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 11),
        scrollDirection: Axis.horizontal,
        children: [
          CategoryElement(title: "Бургеры", image: AppImages.burgerImage),
          CategoryElement(title: "Пицца", image: AppImages.pizzaImage),
          CategoryElement(title: "Фрэнч Доги", image: AppImages.frenchImage),
          CategoryElement(title: "Снэки", image: AppImages.snekiImage),
          CategoryElement(title: "Снэки", image: AppImages.snekiImage),
          CategoryElement(title: "Снэки", image: AppImages.snekiImage),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 30;

  @override
  double get minExtent => 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate)=>true;
}
