import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/models/store.dart';

class StoreImageAndName extends StatelessWidget {
  const StoreImageAndName({
    super.key,
    required this.store,
  });

  final Store store;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        top: 18.h,
        bottom: 16.h,
        start: 35.w,
        end: 45.w,
      ),
      child: Row(
        children: [
          CustomCachedNetworkImage(
            imageUrl: store.img,
            imageBuilder: (_, image) => CircleAvatar(
              radius: 35.r,
              backgroundImage: image,
            ),
          ),
          MySizedBox.width24,
          Expanded(
            child: Text(
              store.name,
              style: AppTextStyles.textStyle16Regular,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
