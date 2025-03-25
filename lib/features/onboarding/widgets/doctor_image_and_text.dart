import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/constants/asset_manager.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AssetManager.docdocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset(AssetManager.onboardingDoctor),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
