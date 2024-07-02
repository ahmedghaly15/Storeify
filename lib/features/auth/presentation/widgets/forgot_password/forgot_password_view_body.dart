import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/core/router/routes.dart';
import 'package:store_ify/core/helpers/auth_helper.dart';
import 'package:store_ify/core/utils/app_constants.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/themes/app_text_styles.dart';
import 'package:store_ify/core/widgets/custom_toast.dart';
import 'package:store_ify/core/widgets/button_loading_indicator.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/cubits/forgot_password/forget_password_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/sign_up_text_button.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  final TextEditingController _emailController = TextEditingController();

  late final GlobalKey<FormState> _formKey;
  late AutovalidateMode autoValidateMode;

  void _initFormAttributes() {
    _formKey = GlobalKey<FormState>();
    autoValidateMode = AutovalidateMode.disabled;
  }

  @override
  void initState() {
    _initFormAttributes();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autoValidateMode,
      child: Padding(
        padding: AppConstants.horizontalPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                "Forget Password",
                style: AppTextStyles.textStyle24Medium,
              ),
            ),
            SizedBox(height: 30.h),
            const TextFieldLabel(label: 'E-mail'),
            CustomTextField(
              onSubmit: (_) => _forgetPassword(context),
              validate: (String? value) => AuthHelper.validateEmailField(value),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              hintText: 'Example@gmail.com',
              autofillHints: const [AutofillHints.email],
            ),
            SizedBox(height: 32.h),
            BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
              listener: (context, state) => _handleForgotPasswordState(
                state,
                context,
              ),
              builder: (context, state) {
                return MainButton(
                  child: state is ForgotPasswordLoading
                      ? const ButtonLoadingIndicator()
                      : Text(
                          'Verify Email',
                          style: AppTextStyles.textStyle16Medium.copyWith(
                            color: Colors.white,
                          ),
                        ),
                  onPressed: () => _forgetPassword(context),
                );
              },
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: AppTextStyles.textStyle16Regular,
                ),
                const SignUpTextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _forgetPassword(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      AuthHelper.keyboardUnfocus(context);
      BlocProvider.of<ForgotPasswordCubit>(context)
          .forgotPassword(email: _emailController.text);
    } else {
      setState(() {
        autoValidateMode = AutovalidateMode.always;
      });
    }
  }

  void _handleForgotPasswordState(
    ForgotPasswordState state,
    BuildContext context,
  ) {
    if (state is ForgotPasswordSuccess) {
      _handleSuccessState(state, context);
    }
    if (state is ForgotPasswordError) {
      showToast(text: state.errorMessage, state: ToastStates.error);
    }
  }

  void _handleSuccessState(ForgotPasswordSuccess state, BuildContext context) {
    showToast(text: state.message, state: ToastStates.success);
    context.navigateTo(
      routeName: Routes.verificationViewRoute,
      arguments: _emailController.text,
    );
  }
}
