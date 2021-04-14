import 'package:places/theme/custom_icons.dart';

/// Function returns [String] for SvgImage.asset() by icon's name [iconName]

String getIconByName(String iconName) {
  // SvgPicture icon;
  switch (iconName) {
    case 'Hotel':
      iconName = iconHotel;
      break;
    case 'Restaurant':
      iconName = iconRestaurant;
      break;
    case 'ParticularPlace':
      iconName = iconParticularPlace;
      break;
    case 'Park':
      iconName = iconPark;
      break;
    case 'Museum':
      iconName = iconMuseum;
      break;
    case 'Cafe':
      iconName = iconCafe;
      break;
  }
  return iconName;
}
