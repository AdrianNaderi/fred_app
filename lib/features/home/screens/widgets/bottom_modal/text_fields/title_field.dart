import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fred_app/features/home/screens/widgets/bottom_modal/text_fields/custom_text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../cms/add_new_spot/cms_add_spot.dart';

class TitleField extends HookConsumerWidget {
  const TitleField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const cms = CMSNewItem.title;

    return CustomTextField(
      name: cms["name"]!,
      placeholder: cms["placeholder"]!,
      userInputKey: cms["userInputKey"]!,
    );
  }
}