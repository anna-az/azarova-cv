// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../../../common/app-translation/translation.extensions.dart';
import '../../../../../common/styles/text.styles.dart';
import 'about.translation.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) => Text(AboutTranslationNames.about.tr,
      style: const TextStyle().dark2.smallSize.regularWeight);
}
