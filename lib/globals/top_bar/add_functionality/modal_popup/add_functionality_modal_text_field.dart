import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/colors_fonts/colors.dart';
import '../../../constants/decoration/border_radius.dart';
import '../../../constants/dimensions.dart';
import '../../../widgets/spacer.dart';
import '../../../widgets/text/custom_boldtext.dart';

class AddFunctionalityTextField extends HookConsumerWidget {
  const AddFunctionalityTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //controller
    final controller = useTextEditingController();

    controller.addListener(
      () {
        // ref.read(inputValidationController).updateHasValue(
        //     key: userInputKey, value: controller.value.text.isNotEmpty);
      },
    );
    //validation conditions
    bool hasValue = false;

    bool hasPressedAddButton = false;

    //builder
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomBoldText(
          text: "Beskriv funktionen du önskar",
          size: 18,
        ),
        CustomSpacer.h(appPadding / 2),
        CupertinoTextField(
          autocorrect: false,
          maxLines: 5,
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
          placeholder:
              "T.ex. jag skulle vilja kunna se alla platser på en karta",
          placeholderStyle: TextStyle(
            color: CustomColors.primary.withOpacity(0.35),
            fontSize: 12,
            height: 1.4,
          ),
          style: const TextStyle(
            color: CustomColors.primary,
            fontSize: 12,
            height: 1.4,
          ),
          cursorHeight: 14,
          onChanged: (value) {
            hasValue = value.isNotEmpty;
          },
        ),
        CustomSpacer.hDefault,
      ],
    );
  }
}
