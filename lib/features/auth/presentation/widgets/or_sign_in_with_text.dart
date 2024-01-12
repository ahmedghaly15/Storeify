import 'package:flutter/widgets.dart';
import 'package:store_ify/config/themes/app_text_styles.dart';

class OrSignInWithText extends StatelessWidget {
  const OrSignInWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Or sign in with",
        style: AppTextStyles.textStyle16Medium,
      ),
    );
  }
}
