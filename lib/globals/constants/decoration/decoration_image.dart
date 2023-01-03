import 'package:flutter/cupertino.dart';

DecorationImage customBoxDecorationImage({required String image}) {
  return DecorationImage(
    image: AssetImage(image),
    fit: BoxFit.cover,
  );
}
