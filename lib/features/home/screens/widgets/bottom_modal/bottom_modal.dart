import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fred_app/features/home/controllers/new_spot_controller.dart';
import 'package:fred_app/features/home/screens/widgets/bottom_modal/text_fields/adress_field.dart';
import 'package:fred_app/features/home/screens/widgets/bottom_modal/text_fields/name_field.dart';
import 'package:fred_app/features/home/screens/widgets/bottom_modal/top_bar/modal_top_bar.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../controllers/input_validation_controller.dart';
import 'button/add_button.dart';

class AddSpotBottomModal extends HookConsumerWidget {
  const AddSpotBottomModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 350,
      padding: CustomPadding.allDefault,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CustomColors.secondary,
        borderRadius: CustomBorderRadius.rDefault,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ModalTopBar(),
            const NameField(),
            const AddressField(),
            CustomAddButton(
              onPressed: () {
                ref.read(newSpotController).hasEmptyValues()
                    ? ref
                        .read(inputValidationController)
                        .updateHasPressedAddButton(true)
                    : ref.read(newSpotController).addItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
