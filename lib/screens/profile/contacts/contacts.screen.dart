import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/app-translation/translation.extensions.dart';
import '../../../common/base/image-asset.dart';
import '../../../common/styles/insets.styles.dart';
import '../../../common/styles/text.styles.dart';
import '../../../common/widgets/app-bar/app-bar.widget.dart';
import '../../../common/widgets/icon/icon.widget.dart';
import '../../../common/widgets/spacers/spacers.widget.dart';
import 'contacts.controller.dart';
import 'contacts.translation.dart';

class ContactsScreen extends GetView<ContactsController> {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBarWidget(title: ContactsTranslationNames.title.tr),
        body: Padding(
          padding: EdgeInsets.all(Insets.xxl),
          child: Column(
            children: <Widget>[
              _buildTile('+380993211181', ImageAsset.phone),
              _buildTile('azarova2828@gmail.com', ImageAsset.email),
              _buildTile('Kyiv, Ukraine', ImageAsset.location),
            ],
          ),
        ),
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
