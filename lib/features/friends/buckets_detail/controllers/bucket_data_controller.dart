import 'package:flutter/material.dart';
import 'package:fred_app/data/buckets/buckets_provider.dart';
import 'package:fred_app/features/friends/buckets_detail/models/buckets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bucketDataController = ChangeNotifierProvider<BucketsDataController>(
  (ref) => BucketsDataController(
    allbuckets: ref.read(bucketsProvider).buckets,
  ),
);

class BucketsDataController extends ChangeNotifier {
  final List<Bucket> allbuckets;

  BucketsDataController({
    required this.allbuckets,
  });
}
