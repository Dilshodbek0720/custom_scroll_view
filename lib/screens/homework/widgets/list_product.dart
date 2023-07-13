import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({super.key, required this.image, required this.title, required this.description, required this.price, required this.vazn, required this.likeIcon, required this.shopIcon});
  final String image;
  final String title;
  final String description;
  final String price;
  final String vazn;
  final String likeIcon;
  final String shopIcon;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: 282,
      height: 124*height/812,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.C_22222A
      ),
      child: Row(
        children: [
          Container(padding: const EdgeInsets.all(4),
            width: 76*width/375,
            height: 76*width/375,
            child: Image.asset(image),
          ),
          const SizedBox(width: 5,),
          SizedBox(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                Row(children: [
                  Text(title, style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white
                  ),),const Spacer(),
                  SizedBox(height: 19, width: 19, child: Image.asset(likeIcon, color: Colors.red,height: 19, width: 19,),),
                ],),
                const SizedBox(height: 4,),
                Text(description, style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.C_6A6A6E
                ),),
                Row(children: [
                  Text(price, style: const TextStyle(
                      fontSize: 16,
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
                  const SizedBox(width: 8,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color: AppColors.C_C69233),
                      shape: BoxShape.circle
                    ),
                    padding: const EdgeInsets.all(6),
                    height: 32, width: 32, child: SvgPicture.asset(shopIcon, width: 18, height: 18,),)
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}
