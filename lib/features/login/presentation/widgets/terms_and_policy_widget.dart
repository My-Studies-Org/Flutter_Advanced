import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class TermsAndPolicyWidget extends StatelessWidget {
  const TermsAndPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(height: 1.5),
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font14GrayRegular,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyles.font14TextRegular,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          TextSpan(text: ' and ', style: TextStyles.font14GrayRegular),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyles.font14TextRegular,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
