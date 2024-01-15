import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/widgets/custom_outlined_button.dart';
import 'package:store_ify/core/widgets/custom_page_title.dart';
import 'package:store_ify/features/stores/presentation/widgets/clothes_grid_view.dart';
import 'package:store_ify/features/stores/presentation/widgets/food_grid_view.dart';

class StoresViewBody extends StatefulWidget {
  const StoresViewBody({super.key});

  @override
  State<StoresViewBody> createState() => _StoresViewBodyState();
}

class _StoresViewBodyState extends State<StoresViewBody> {
  final List<String> text = ["Food", "Clothes"];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomPageTitle(title: "Stores"),
        SizedBox(
          height: 15.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            height: 25,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomButtonOutlinedApp(
                  onPressed: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  text: text[index],
                  activeColor: currentIndex == index
                      ? AppColors.primaryColor
                      : AppColors.blueColor,
                );
              },
              itemCount: 2,
              separatorBuilder: ((context, index) => SizedBox(
                    width: 8.h,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 19.h,
        ),
        if (currentIndex == 0) const Expanded(child: FoodGridView()),
        if (currentIndex == 1) const Expanded(child: ClothesGridView()),
      ],
    );
  }
}
