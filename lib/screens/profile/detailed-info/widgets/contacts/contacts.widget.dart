// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/base/image-asset.dart';
import '../../../../../common/styles/insets.styles.dart';
import '../../../../../common/styles/text.styles.dart';
import '../../../../../common/widgets/icon/icon.widget.dart';
import '../../../../../common/widgets/spacers/spacers.widget.dart';
import 'contacts.controller.dart';

class ContactsWidget extends GetView<ContactsController> {
  const ContactsWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          _buildTile('+380993211181', ImageAsset.phone),
          _buildTile('azarova2828@gmail.com', ImageAsset.email),
          _buildTile('Kyiv, Ukraine', ImageAsset.location),
        ],
      );

  Widget _buildTile(String title, ImageAsset imageAssets) => InkWell(
        onLongPress: () => controller.copyText(title),
        child: Padding(
          padding: EdgeInsets.only(bottom: Insets.xxl),
          child: Row(
            children: <Widget>[
              IconWidget(imageAssets),
              HSpace.lg,
              Text(
                title,
                style: const TextStyle().dark3.mediumSize.regularWeight,
              )
            ],
          ),
        ),
      );
}
