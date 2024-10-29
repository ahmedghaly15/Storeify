import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_ify/core/locale/lang_keys.dart';
import 'package:store_ify/core/widgets/email_text_form_field.dart';
import 'package:store_ify/core/widgets/my_sized_box.dart';
import 'package:store_ify/core/widgets/username_text_form_field.dart';
import 'package:store_ify/features/auth/presentation/widgets/text_field_label.dart';
import 'package:store_ify/features/profile/presentation/cubits/update_profile/update_profile_cubit.dart';

class UpdateProfileForm extends StatelessWidget {
  const UpdateProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final updateProfileCubit = context.read<UpdateProfileCubit>();
    return Form(
      key: updateProfileCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextFieldLabel(labelKey: LangKeys.email),
          EmailTextFormField(
            emailController: updateProfileCubit.emailController,
          ),
          MySizedBox.height24,
          const TextFieldLabel(labelKey: LangKeys.username),
          UsernameTextFormField(
            controller: updateProfileCubit.usernameController,
          ),
        ],
      ),
    );
  }
}
