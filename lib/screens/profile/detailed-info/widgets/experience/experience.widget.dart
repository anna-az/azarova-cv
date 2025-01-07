// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../../../../common/date/date.extension.dart';
import '../../../../../common/styles/insets.styles.dart';
import '../../../../../common/styles/text.styles.dart';
import '../../../../../common/theme/theme.extensions.dart';
import '../../../../../common/widgets/spacers/spacers.widget.dart';
import 'experience.controller.dart';
import 'experience.model.dart';

class ExperienceWidget extends GetView<ExperienceController> {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => ListView(
          children: <Widget>[
            ...controller.professionalExperience.map(_buildTile)
          ],
        ),
      );

  Widget _buildTile(ExperienceModel experience) => Padding(
        padding: EdgeInsets.only(bottom: Insets.xxxl),
        child: IntrinsicHeight(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _buildCircle(),
                  Expanded(
                      child: Container(
                          width: 2, color: Get.context?.themeColors.primary)),
                  _buildCircle()
                ],
              ),
              HSpace.xl,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                        '(${experience.startTime.monthYear} - ${experience.endTime.monthYear})',
                        style: const TextStyle().dark3.mediumSize.mediumWeight),
                    VSpace.regular,
                    Text(experience.position,
                        style: const TextStyle().dark3.h6.semiBoldWeight),
                    VSpace.regular,
                    Text(experience.company,
                        style:
                            const TextStyle().dark3.mediumSize.regularWeight),
                    VSpace.regular,
                    ...experience.responsibilities.map(
                        (String responsibility) => Text('- $responsibility',
                            style: const TextStyle()
                                .dark3
                                .smallSize
                                .regularWeight))
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildCircle() => Container(
        width: Insets.xs,
        height: Insets.xs,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Get.context?.themeColors.primary,
        ),
      );
}
