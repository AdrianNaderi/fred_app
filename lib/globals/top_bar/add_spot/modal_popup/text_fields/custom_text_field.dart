import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fred_app/features/bottom_tabs/controllers/input_validation_controller.dart';
import 'package:fred_app/features/bottom_tabs/controllers/new_spot_controller.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:fred_app/globals/constants/dimensions.dart';
import 'package:fred_app/globals/widgets/spacer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../globals/constants/colors_fonts/colors.dart';
import '../../../../widgets/text/custom_bold_text.dart';

class CustomTextField extends HookConsumerWidget {
  final String name;
  final String placeholder;
  final String userInputKey;

  const CustomTextField({
    super.key,
    required this.name,
    required this.placeholder,
    required this.userInputKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //controller
    final controller = useTextEditingController();

    controller.addListener(
      () {
        ref.read(inputValidationController).updateHasValue(
            key: userInputKey, value: controller.value.text.isNotEmpty);
      },
    );
    //validation conditions
    bool hasValue =
        ref.watch(inputValidationController).hasValue[userInputKey] ??= false;
    bool hasPressedAddButton =
        ref.watch(inputValidationController).hasPressedAddButton;

    //builder
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBoldText(
          text: name,
          size: 18,
        ),
        CustomSpacer.h(appPadding / 2),
        CupertinoTextField(
          autocorrect: false,
          placeholder: placeholder,
          placeholderStyle: TextStyle(
            color: CustomColors.primary.withOpacity(0.35),
            fontSize: 12,
            height: 1.4,
          ),
          controller: controller,
          decoration: BoxDecoration(
            color: CustomColors.secondary,
            borderRadius: CustomBorderRadius.rDefault,
            border: !hasValue && hasPressedAddButton
                ? Border.all(
                    width: 0.5,
                    color: CustomColors.error,
                    strokeAlign: StrokeAlign.inside)
                : Border.all(width: 1.5, color: CustomColors.grey),
          ),
          onChanged: (value) {
            ref
                .read(newSpotController)
                .updateUserInput(key: userInputKey, value: value);
          },
        ),
        CustomSpacer.hDefault
      ],
    );
  }
}
