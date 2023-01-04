import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fred_app/features/bottom_tabs/controllers/new_spot_controller.dart';
import 'package:fred_app/globals/constants/colors_fonts/colors.dart';
import 'package:fred_app/globals/constants/decoration/border_radius.dart';
import 'package:fred_app/globals/constants/marpad.dart';
import 'package:fred_app/globals/top_bar/add_spot/modal_popup//add_spot_modal_adress_field.dart';
import 'package:fred_app/globals/top_bar/add_spot/modal_popup/add_spot_modal_name_field.dart';
import 'package:fred_app/globals/top_bar/add_spot/modal_popup/add_spot_modal_title.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../features/bottom_tabs/controllers/input_validation_controller.dart';
import 'add_spot_modal_button.dart';

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
            const AddSpotTitle(),
            const AddSpotNameField(),
            const AddSpotAddressField(),
            AddSpotButton(
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
