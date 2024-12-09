// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../detailed-info.controller.dart';

class AboutController extends DetailedInfoController {
  AboutController(super.detailedInfoService);

  final TextEditingController aboutController = TextEditingController(
      text:
          'I am a responsible and goal-oriented Flutter Developer with strong self-learning and quick learning abilities. My logical thinking and effective communication skills help me tackle complex challenges and collaborate efficiently within a team. As a team player, I thrive in dynamic environments and am always eager to expand my knowledge and contribute to project success.');
}
