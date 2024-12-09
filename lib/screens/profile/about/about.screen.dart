import 'package:flutter/material.dart';

import '../../../common/app-translation/translation.extensions.dart';
import '../../../common/styles/insets.styles.dart';
import '../../../common/styles/text.styles.dart';
import '../../../common/widgets/app-bar/app-bar.widget.dart';
import 'about.translation.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBarWidget(title: AboutTranslationNames.title.tr),
        body: Padding(
          padding: EdgeInsets.all(Insets.xxl),
          child: Text(AboutTranslationNames.about.tr,
              style: const TextStyle().dark2.smallSize.regularWeight),
        ),
      );
}
