// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import '../../common/app-translation/translation.extensions.dart';
import '../../common/base/image-asset.dart';
import '../../common/base/routes.dart';
import '../../common/styles/insets.styles.dart';
import '../../common/styles/text.styles.dart';
import '../../common/widgets/app-bar/app-bar.widget.dart';
import '../../common/widgets/spacers/spacers.widget.dart';
import 'profile.controller.dart';
import 'profile.translation.dart';
import 'widgets/profile-image/profile-image.widget.dart';
import 'widgets/profile-section/profile-section-tile/profile-section-tile.widget.dart';
import 'widgets/profile-section/profile-section.widget.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBarWidget(
            title: ProfileTranslationNames.title.tr, needBackButton: false),
        body: ListView(
          padding: EdgeInsets.all(Insets.xxl),
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            const ProfileImageWidget(),
            VSpace.regular,
            Center(
                child: Text(ProfileTranslationNames.name.tr,
                    style: const TextStyle().dark3.h5.mediumWeight)),
            VSpace.sm,
            Center(
                child: Text(ProfileTranslationNames.position.tr,
                    style: const TextStyle().dark3.largeSize.mediumWeight)),
            VSpace.xxl,
            ProfileSectionWidget(
              children: <ProfileSectionTileWidget>[
                ProfileSectionTileWidget(
                  title: ProfileTranslationNames.about.tr,
                  icon: ImageAsset.about,
                  onTap: () => controller.navigate(AppRoutes.about),
                ),
                ProfileSectionTileWidget(
                  title: ProfileTranslationNames.contacts.tr,
                  icon: ImageAsset.contacts,
                  onTap: () => controller.navigate(AppRoutes.contacts),
                ),
              ],
            ),
            VSpace.regular,
            ProfileSectionWidget(
              children: <ProfileSectionTileWidget>[
                ProfileSectionTileWidget(
                    title: ProfileTranslationNames.skills.tr,
                    icon: ImageAsset.skills,
                    onTap: () => controller.navigate(AppRoutes.skills)),
                ProfileSectionTileWidget(
                  title: ProfileTranslationNames.languages.tr,
                  icon: ImageAsset.language,
                  onTap: () => controller.navigate(AppRoutes.languages),
                ),
                ProfileSectionTileWidget(
                  title: ProfileTranslationNames.stores.tr,
                  icon: ImageAsset.store,
                  onTap: () => controller.navigate(AppRoutes.stores),
                ),
              ],
            ),
            VSpace.regular,
            ProfileSectionWidget(
              children: <ProfileSectionTileWidget>[
                ProfileSectionTileWidget(
                  title: ProfileTranslationNames.work.tr,
                  icon: ImageAsset.work,
                  onTap: () => controller.navigate(AppRoutes.experience),
                ),
                ProfileSectionTileWidget(
                  title: ProfileTranslationNames.education.tr,
                  icon: ImageAsset.education,
                ),
              ],
            )
          ],
        ),
      );
}
