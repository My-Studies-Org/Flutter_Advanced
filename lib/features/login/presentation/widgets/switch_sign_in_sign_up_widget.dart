import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/helpers/extensions/size_extensions.dart';
import 'package:flutter_advanced/core/theming/styles.dart';

class SwitchSignInSignUpWidget extends StatelessWidget {
  const SwitchSignInSignUpWidget({super.key, this.toSignIn = false});
  final bool toSignIn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          toSignIn ? 'don\'t have account? ' : 'Already have an account? ',
          style: TextStyles.font14TextRegular,
        ),
        3.widthBox,
        GestureDetector(
          onTap: () {},
          child: Text(
            toSignIn ? 'Sign In' : 'Sign Up',
            style: TextStyles.font14PrimarySemiBold,
          ),
        ),
      ],
    );
  }
}
