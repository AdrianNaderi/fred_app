import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final exploreViewController = ChangeNotifierProvider<ExploreViewController>(
    (ref) => ExploreViewController());

class ExploreViewController extends ChangeNotifier {
  
}
