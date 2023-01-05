import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/colors_fonts/colors.dart';
import '../../../constants/decoration/border_radius.dart';
import '../../../constants/marpad.dart';
import '../../../widgets/spacer.dart';
import 'add_functionality_modal_button.dart';
import 'add_functionality_modal_text_field.dart';
import 'add_functionality_modal_title.dart';

class AddFunctionalityModal extends HookConsumerWidget {
  const AddFunctionalityModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //builder
    return Container(
      height: 310,
      width: double.infinity,
      padding: CustomPadding.allDefault,
      decoration: BoxDecoration(
        color: CustomColors.secondary,
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSpacer.h8,
          const AddFunctionalityTitle(),
          CustomSpacer.hDefault,
          const AddFunctionalityTextField(),
          AddFunctionalityButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
