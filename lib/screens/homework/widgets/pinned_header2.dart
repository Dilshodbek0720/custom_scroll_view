import 'package:custom_scroll_view/utils/app_colors.dart';
import 'package:flutter/material.dart';


class ProductHeaderView2 extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context,double shrinkOffset, bool overlapsContent) {
    return const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Row(children: [
          Text("Все товары", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColors.white
          ),),
          Spacer(),
          Text("Посмотреть все", style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.C_EDB216
          ),)
        ],)
    );
  }

  @override
  double get maxExtent => 40;

  @override
  double get minExtent => 40;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate)=>false;
}
