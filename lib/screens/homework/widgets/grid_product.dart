import 'package:custom_scroll_view/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GridProduct extends StatelessWidget {
  const GridProduct({super.key, required this.image, required this.title, required this.description, required this.price, required this.vazn, required this.likeIcon, required this.plusIcon});
  final String image;
  final String title;
  final String description;
  final String price;
  final String vazn;
  final String likeIcon;
  final String plusIcon;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.C_22222A,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(4),
          width: 140,
          height: 120*height/812,
          child: Image.asset(image),),
        const SizedBox(height: 5,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 11),
          width: double.infinity,
          height: 114,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white
              ),),
              const SizedBox(height: 11,),
              Text(description, style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: AppColors.C_6A6A6E
              ),),
              Row(children: [
                Text(price, style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white
                )),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.C_16151B,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  height: 18, width: 38, child: Center(
                  child: Text(price, style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: AppColors.C_6A6A6E
                  )),
                ),),
                const SizedBox(width: 6,),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.C_E1D24A,
                          AppColors.C_C69233
                        ]
                      ),
                      shape: BoxShape.circle
                  ),
                  padding: const EdgeInsets.all(10),
                  height: 34, width: 34, child: SvgPicture.asset(plusIcon, width: 10, height: 10,),)
              ],)
            ],
          ),
        )
      ],),
    );
  }
}
