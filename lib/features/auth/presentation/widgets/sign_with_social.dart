import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/utils/app_assets.dart';

class SignWithSocial extends StatelessWidget {
  const SignWithSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: CircleAvatar(
              radius: 10.r,
              child: Image.asset(
                AppAssets.imagesFacebook,
              )),
        ),
        ElevatedButton(
          onPressed: () {},
          child: CircleAvatar(
              radius: 10.r,
              child: Image.asset(
                AppAssets.imagesGoogle,
              )),
        ),
        ElevatedButton(
          onPressed: () {},
          child: CircleAvatar(
            radius: 10.r,
            child: Image.asset(AppAssets.imagesTwitter),
          ),
        ),
      ],
    );
  }
}
