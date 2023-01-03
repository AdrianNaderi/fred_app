import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/explore/models/explore.dart';

final spotsProvider = Provider<SpotsProvider>((ref) => SpotsProvider());

class SpotsProvider extends ChangeNotifier {
  final List<Spot> _spots = [
    const Spot(
      id: "001",
      name: "Brännerian",
      address: "Robinsgata 14",
      area: "Södermalm",
      title: "Mariannes förbjudna ställe",
      description:
          "Det är den prisbelönte bartendern Hampus Thunholm som står bakom ännu ett nytt barkoncept, denna gång mitt på Sergels torg. Tillsammans med Stureplansgruppen presenterar de en cocktailbar och restaurang vid namn Röda Huset. Sippa på spännande cocktails med svenska ingredienser och ät pizza långt in på kvällen.",
      tags: [
        "Marre",
        "Barre",
        "Marre",
        "Barre",
      ],
      images: [],
    ),
    const Spot(
      id: "002",
      name: "Asian Post Office",
      address: "Kungsgatan 14",
      area: "City",
      title: "Smaskigt gott!",
      description: "Undra vad som kan stå här",
      tags: [
        "Asiatiskt",
        "Fusion",
        "mat",
        "Mat",
        "Gott",
      ],
      images: [],
    )
  ];

  List<Spot> get spots => [..._spots];

  List<Spot> getUserFavoriteSpots({required List<String> userFavorites}) {
    return spots
        .where((element) => userFavorites.contains(element.id))
        .toList();
  }
}
