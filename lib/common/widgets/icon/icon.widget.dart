// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import '../../base/image-asset.dart';

class IconWidget extends StatelessWidget {
  const IconWidget(this.imageAssets,
      {this.color,
      this.fit = BoxFit.contain,
      this.width,
      this.height,
      super.key});
  final ImageAsset imageAssets;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
        imageAssets.path,
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        height: height,
        width: width,
        fit: fit,
      );
}
