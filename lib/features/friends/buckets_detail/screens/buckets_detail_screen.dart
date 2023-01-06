import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/bucket_data_controller.dart';

class BucketsDetailScreen extends ConsumerWidget {
  const BucketsDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userBuckets = ref.read(bucketDataController).allbuckets;
    return CupertinoPageScaffold(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [],
    ));
  }
}
