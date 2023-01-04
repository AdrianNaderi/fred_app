import 'package:flutter/material.dart';
import 'package:fred_app/globals/models/category.dart';
import 'package:fred_app/globals/models/content.dart';
import 'package:fred_app/globals/models/location.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../globals/models/media.dart';
import '../../globals/models/spot.dart';

final spotsProvider = Provider<SpotsProvider>((ref) => SpotsProvider());

class SpotsProvider extends ChangeNotifier {
  final List<Spot> _spots = [
    const Spot(
      id: "001",
      name: "Brännerian",
      nameShort: "",
      content: Content(
          title: "Mariannes förbjudna ställe",
          description:
              "Det är den prisbelönte bartendern Hampus Thunholm som står bakom ännu ett nytt barkoncept, denna gång mitt på Sergels torg. Tillsammans med Stureplansgruppen presenterar de en cocktailbar och restaurang vid namn Röda Huset. Sippa på spännande cocktails med svenska ingredienser och ät pizza långt in på kvällen.",
          tags: ["Marre", "Barre", "Marre", "Barre"]),
      media: Media(
        images: [
          "assets/spots/9.jpg",
          "assets/spots/13.jpg",
          "assets/spots/14.jpg"
        ],
        icon: "assets/icons/profile.png",
      ),
      location: Location(
        address: "Robinsgata 14",
        area: "Södermalm",
      ),
      category: Category(
          main: "Drinkar", mainImage: "", sub: "Cocktails", subImage: ""),
    ),
    const Spot(
      id: "002",
      name: "A bar called Gemma",
      nameShort: "",
      content: Content(
        title: "Mariannes förbjudna ställe",
        description:
            "Det är den prisbelönte bartendern Hampus Thunholm som står bakom ännu ett nytt barkoncept, denna gång mitt på Sergels torg. Tillsammans med Stureplansgruppen presenterar de en cocktailbar och restaurang vid namn Röda Huset. Sippa på spännande cocktails med svenska ingredienser och ät pizza långt in på kvällen.",
        tags: [
          "Marre",
          "Barre",
          "Marre",
          "Barre",
        ],
      ),
      media: Media(
        images: [
          "assets/spots/8.jpg",
        ],
        icon: "assets/icons/profile.png",
      ),
      location: Location(
        address: "Robinsgata 14",
        area: "Södermalm",
      ),
      category: Category(
          main: "Drinkar", mainImage: "", sub: "Cocktails", subImage: ""),
    ),
  ];

  List<Spot> get spots => [..._spots];

  List<Spot> getUserFavoriteSpots({required List<String> userFavorites}) {
    return spots
        .where((element) => userFavorites.contains(element.id))
        .toList();
  }
}
