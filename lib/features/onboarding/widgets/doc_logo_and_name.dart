import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/constants/asset_manager.dart';
import 'package:flutter_advanced/core/helpers/extensions/size_extensions.dart';
import 'package:flutter_advanced/core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetManager.docdocLogo),
        10.widthBox,
        Text('Docdoc', style: TextStyles.font24Black700Wight),
      ],
    );
  }
}
