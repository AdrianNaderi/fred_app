import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/dimensions.dart';
import '../../../widgets/spacer.dart';
import '../../../../features/home/controllers/input_validation_controller.dart';
import '../../../../features/home/controllers/new_spot_controller.dart';
import '../../../../features/home/screens/widgets/bottom_modal/button/add_button.dart';
import '../../../constants/colors_fonts/colors.dart';
import '../../../constants/decoration/border_radius.dart';
import '../../../constants/marpad.dart';
import '../../../widgets/text/custom_boldtext.dart';

class CustomTopBarModalPopUp extends HookConsumerWidget {
  const CustomTopBarModalPopUp({super.key});

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
          Container(
            alignment: Alignment.center,
            child: const CustomBoldText(
              text: "Ge förslag på funktion",
              size: 22,
            ),
          ),
          CustomSpacer.hDefault,
          Column(
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
                  value.isEmpty ? print("empty") : print("not empty");
                },
              ),
              CustomSpacer.hDefault,
              CustomAddButton(onPressed: () {
               
              },),
            ],
          )
        ],
      ),
    );
  }
}
