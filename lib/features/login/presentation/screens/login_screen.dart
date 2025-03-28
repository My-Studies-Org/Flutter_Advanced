import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/extensions/size_extensions.dart';
import 'package:flutter_advanced/core/theming/app_colors.dart';
import 'package:flutter_advanced/core/widgets/app_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../widgets/switch_sign_in_sign_up_widget.dart';
import '../widgets/terms_and_policy_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24PrimaryBold),
                8.heightBox,
                Text(
                  "We're excited to have you back, can't wait to see what "
                  "you've been up to since you last logged in.",
                  style: TextStyles.font14GrayRegular,
                ),
                35.heightBox,
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const AppTextField(
                        hint: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        action: TextInputAction.next,
                      ),
                      18.heightBox,
                      AppTextField(
                        hint: 'Password',
                        obscureText: _isPasswordHidden,
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: InkWell(
                          onTap:
                              () => setState(
                                () => _isPasswordHidden = !_isPasswordHidden,
                              ),
                          child: Icon(
                            _isPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color:
                                _isPasswordHidden
                                    ? AppColors.gray
                                    : AppColors.primary,
                          ),
                        ),
                        action: TextInputAction.done,
                      ),
                      20.heightBox,
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13PrimaryRegular,
                        ),
                      ),
                      40.heightBox,
                      AppButton(title: 'Login', onPressed: () {}),
                      30.heightBox,
                      const TermsAndPolicyWidget(),
                      40.heightBox,
                      const SwitchSignInSignUpWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
