import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/widgets/custom_cached_network_image.dart';

class ProfileImg extends StatelessWidget {
  const ProfileImg({super.key, this.radius = 30});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: userNotifier,
      builder: (context, user, __) => CustomCachedNetworkImage(
        imageUrl: user!.user.img != 'http://192.168.1.6:8081/uploads'
            ? user.user.img!
            : 'https://img.freepik.com/free-photo/confident-handsome-guy-posing-against-white-wall_176420-32936.jpg?t=st=1726145242~exp=1726148842~hmac=d88f0854b224a4b284dd8236414a4e0854ca07915b501ad2375b8032fed3456e&w=1060',
        imageBuilder: (_, image) => CircleAvatar(
          radius: radius.r,
          backgroundImage: image,
          backgroundColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
