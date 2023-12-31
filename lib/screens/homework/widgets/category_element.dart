import 'package:custom_scroll_view/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryElement extends StatelessWidget {
  const CategoryElement({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.C_22222A,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(children: [
        SizedBox(height: 16, width: 16,child: Image.asset(image),),
        const SizedBox(width: 4,),
        Text(title,style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: AppColors.white
        ),)
      ],)
    );
  }
}
