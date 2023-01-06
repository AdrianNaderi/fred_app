import 'package:flutter/material.dart';
import 'package:fred_app/features/friends/buckets_detail/models/buckets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bucketsProvider = Provider<BucketsProvider>(
  (ref) => BucketsProvider(),
);

class BucketsProvider extends ChangeNotifier {
  final List<Bucket> _buckets = [
    const Bucket(
      id: "1",
      name: "Bästa drinkarna i Stockholm",
      userIds: ["1", "2", "3"],
      spotIds: ["1", "2"],
      spotsCompleted: [],
    )
  ];

  List<Bucket> get buckets => [..._buckets];
}
