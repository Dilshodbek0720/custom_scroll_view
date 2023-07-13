import 'package:custom_scroll_view/screens/homework/widgets/category_element.dart';
import 'package:custom_scroll_view/screens/homework/widgets/category_delegate.dart';
import 'package:custom_scroll_view/screens/homework/widgets/grid_product.dart';
import 'package:custom_scroll_view/screens/homework/widgets/list_product.dart';
import 'package:custom_scroll_view/screens/homework/widgets/pinned_header.dart';
import 'package:custom_scroll_view/screens/homework/widgets/pinned_header2.dart';
import 'package:custom_scroll_view/utils/app_colors.dart';
import 'package:custom_scroll_view/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSliverScreen extends StatefulWidget {
  const CustomSliverScreen({super.key});

  @override
  State<CustomSliverScreen> createState() => _CustomSliverScreenState();
}

class _CustomSliverScreenState extends State<CustomSliverScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.C_111015,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 62,
            title: Column(
              children: [
                Row(children: [
                  Text("Привет, Максим", style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColors.white
                  ),),
                  Spacer(),
                  SizedBox(height: 36, width: 36, child: SvgPicture.asset(AppImages.searchIcon,width: 36, height: 36,),),
                  SizedBox(width: 11,),
                  SizedBox(width: 36, height: 36, child: Image.asset(AppImages.profileImage, width: 36, height: 36,)),
                ],),
                Padding(padding: EdgeInsets.only(top: 9),
                child: Container(
                  width: double.infinity,
                  height: 7,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.C_E1D24A,
                        AppColors.C_C69233
                      ]
                    )
                  ),
                )),
              ],
            ),
            pinned: true,
            backgroundColor: AppColors.C_111015,
          ),
          SliverPersistentHeader(
              delegate: ProductHeaderView()),
          SliverToBoxAdapter(
            child: Container(
              height: 124*height/812,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListProduct(image: AppImages.chickenBurgerImage, title: "Чикен Бургер", description: "Котлета куриная, свежие овощи, сыр чеддер,  соус для бургера", price: "₽160", vazn: "290g", likeIcon: AppImages.likeImage, shopIcon: AppImages.shopIcon,),
                  ListProduct(image: AppImages.chickenBurgerImage, title: "Чикен Бургер", description: "Котлета куриная, свежие овощи, сыр чеддер,  соус для бургера", price: "₽160", vazn: "290g", likeIcon: AppImages.likeImage, shopIcon: AppImages.shopIcon,)
                ],
              ),
            )
          ),
          SliverPersistentHeader(delegate: ProductHeaderView2()),
          SliverPersistentHeader(
            pinned: true,
              delegate: CategoryDelegateView()
          ),
          // SliverToBoxAdapter(
          //     child: Container(
          //       height: 30*height/812,
          //       child: ListView(
          //         padding: EdgeInsets.symmetric(horizontal: 11),
          //         scrollDirection: Axis.horizontal,
          //         children: [
          //           CategoryElement(title: "Бургеры", image: AppImages.burgerImage),
          //           CategoryElement(title: "Пицца", image: AppImages.pizzaImage),
          //           CategoryElement(title: "Фрэнч Доги", image: AppImages.frenchImage),
          //           CategoryElement(title: "Снэки", image: AppImages.snekiImage),
          //           CategoryElement(title: "Снэки", image: AppImages.snekiImage),
          //           CategoryElement(title: "Снэки", image: AppImages.snekiImage),
          //         ],
          //       ),
          //     )
          // ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return GridProduct(image: AppImages.chickenBurgerImage, title: "Чикен Бургер", description: "Котлета куриная, свежие овощи, сыр чеддер,  соус для бургера", price: "₽160", vazn: "290g", likeIcon: AppImages.likeImage, plusIcon: AppImages.plusIcon,);
                },
              childCount: 20
            ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 166/230,
            ),),
          )
        ],
      ),
    );
  }
}
