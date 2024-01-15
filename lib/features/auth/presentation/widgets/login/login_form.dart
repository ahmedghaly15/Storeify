import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_ify/config/router/routes.dart';
import 'package:store_ify/core/helpers/auth_helper.dart';
import 'package:store_ify/core/helpers/cache_helper.dart';
import 'package:store_ify/config/themes/app_colors.dart';
import 'package:store_ify/core/utils/app_navigator.dart';
import 'package:store_ify/core/utils/app_strings.dart';
import 'package:store_ify/core/utils/functions/show_toast.dart';
import 'package:store_ify/core/widgets/main_button.dart';
import 'package:store_ify/features/auth/presentation/widgets/custom_auth_loading.dart';
import 'package:store_ify/features/layout/presentation/cubit/layout_cubit.dart';
import 'package:store_ify/service_locator.dart';
import 'package:store_ify/core/widgets/custom_text_field.dart';
import 'package:store_ify/features/auth/presentation/cubits/login/login_cubit.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_bottom_spacer.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  late final GlobalKey<FormState> _formKey;
  late AutovalidateMode autovalidateMode;

  void _initFormAttributes() {
    _formKey = GlobalKey<FormState>();
    autovalidateMode = AutovalidateMode.disabled;
  }

  @override
  void initState() {
    _initFormAttributes();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _disposeController();

    _disposeFocusNodes();
  }

  void _disposeFocusNodes() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  void _disposeController() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) => _handleLoginStates(state, context),
      builder: (context, state) {
        return Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const TextFieldLabel(label: 'E-mail'),
              CustomTextField(
                validate: (String? value) =>
                    AuthHelper.validateEmailField(value),
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(_passwordFocusNode),
                controller: _emailController,
                focusNode: _emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Example@gmail.com',
                autofillHints: const [AutofillHints.email],
              ),
              const TextFieldBottomSpacer(),
              const TextFieldLabel(label: 'password'),
              CustomTextField(
                autofillHints: const <String>[AutofillHints.password],
                validate: (String? value) =>
                    AuthHelper.validatePasswordField(value),
                focusNode: _passwordFocusNode,
                onSubmit: (_) => _login(context),
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                hintText: '*********',
                obscureText: BlocProvider.of<LoginCubit>(context).isPassword,
                suffixIcon: IconButton(
                  onPressed: () {
                    BlocProvider.of<LoginCubit>(context)
                        .changePasswordVisibility();
                  },
                  icon: Icon(
                    BlocProvider.of<LoginCubit>(context).isPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              MainButton(
                text: 'Log in',
                onPressed: () => _login(context),
              ),
            ],
          ),
        );
      },
    );
  }

  void _login(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      AuthHelper.keyboardUnfocus(context);
      BlocProvider.of<LoginCubit>(context).userLogin(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );
    } else {
      setState(() {
        autovalidateMode = AutovalidateMode.always;
      });
    }
  }

  void _handleLoginStates(LoginState state, BuildContext context) {
    if (state is LoginLoading) {
      CustomAuthLoading.show(context);
    }

    if (state is LoginSuccess) {
      _handleSuccessState(state, context);
    }

    if (state is LoginError) {
      _handleErrorState(context, state);
    }
  }

  void _handleErrorState(BuildContext context, LoginError state) {
    context.back();
    showToast(text: state.error, state: ToastStates.error);
  }

  void _handleSuccessState(LoginSuccess state, BuildContext context) {
    context.back();
    BlocProvider.of<LayoutCubit>(context).getUser(userId: state.uId);
    getIt
        .get<CacheHelper>()
        .saveData(key: AppStrings.cachedUserId, value: state.uId)
        .then((value) {
      if (value) {
        context.navigateAndReplace(newRoute: Routes.storeifyLayoutViewRoute);
      }
    });
  }
}
