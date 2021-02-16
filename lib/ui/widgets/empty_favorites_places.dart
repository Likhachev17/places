import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/constants.dart';
import 'package:places/theme/custom_icons.dart';
import 'package:places/theme/text_styles.dart';

//TODO объединить со вторым экраном и прописать логику
/// Model of the screen "Favorites places" without elements
///
/// Must be assigned to the 'VisitingScreen-Scaffold-body:' if the SightListWidget is empty
class EmptyFavoritesPlacesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconEmptyFavoritesPlaces),
          SizedBox(height: 32),
          Text(
            AppTexts.empty,
            style: favoritesScreenEmptyPlacesBig,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            AppTexts.tagPlacesYouWannaVisit,
            style: favoritesScreenEmptyPlaces,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
