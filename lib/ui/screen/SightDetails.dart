import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/theme/colors.dart';

class SightDetails extends StatelessWidget {
  // This class builds page "details" of sight card by Image(1) and button "back"(2), sight name (3), type (4), work time (5), description (6),
  //button "build a route" (7), button "to schedule" (8) and button "to favorites" (9).
  // TODO еще разок убрать пустые строки везде
  //TODO положить в моки время работы
  final Sight sight;

  const SightDetails({
    Key key,
    @required this.sight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CardDetailsImage(url: sight.url), //(1)
                CardDetailsBackButton(), //(2)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 24,
              ),
              child: Column(
                children: [
                  CardDetailsName(name: sight.nameSight), //(3)
                  Row(
                    children: [
                      CardDetailsType(type: sight.type), //(4)
                      const SizedBox(width: 16),
                      CardDetailsWorkTime(), //(5)
                    ],
                  ),
                  CardDetailsDescription(details: sight.details), //(6)
                  CardDetailsBuildARouteBtn(), //(7)
                  SizedBox(
                    height: 24,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardDetailsToScheduleBtn(), //(8)
                      CardDetailsToFavoritesBtn(), //(9)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardDetailsImage extends StatelessWidget {
  const CardDetailsImage({Key key, @required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: double.infinity,
      height: 360,
      child: Image.network(
        url,
        fit: BoxFit.cover,
        height: 360,
      ),
    ));
  }
}

class CardDetailsBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 36,
      left: 16,
      child: SizedBox(
        width: 32,
        height: 32,
        child: FlatButton(
          padding: EdgeInsets.all(0),
          onPressed: () {},
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 15,
          ),
        ),
      ),
    );
  }
}

class CardDetailsName extends StatelessWidget {
  const CardDetailsName({Key key, @required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
      ),
      child: Text(
        name,
        style: sightCardNameDetailsTextStyle,
      ),
    );
  }
}

class CardDetailsType extends StatelessWidget {
  const CardDetailsType({Key key, @required this.type}) : super(key: key);
  final String type;

  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      style: sightCardTypeDetailsTextStyle,
    );
  }
}

class CardDetailsWorkTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'закрыто до 09:00',
      style: sightCardWorkTimeDetailsTextStyle,
    );
  }
}

class CardDetailsDescription extends StatelessWidget {
  const CardDetailsDescription({Key key, @required this.details})
      : super(key: key);
  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text(
        details,
        style: CardDetailsDescriptionTextStyle,
      ),
    );
  }
}

class CardDetailsBuildARouteBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      color: Colors.green,
      height: 48,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      icon: ImageIcon(
        AssetImage('assets/Icons/GO.png'),
        color: AppColors.white,
        size: 20,
      ),
      label: const Text(
        'ПОСТРОИТЬ МАРШРУТ',
        style: TextStyle(color: AppColors.white, fontSize: 14),
      ),
    );
  }
}

class CardDetailsToScheduleBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      icon: ImageIcon(
        AssetImage('assets/Icons/Calendar.png'),
        size: 22,
        color: AppColors.inactive,
      ),
      label: Text(
        'Запланировать',
        style: sightCardToScheduleBtnInactiveTextStyle,
      ),
    );
  }
}

class CardDetailsToFavoritesBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      icon: ImageIcon(
        AssetImage('assets/Icons/Heart.png'),
        size: 22,
        color: AppColors.primary,
      ),
      label: Text(
        'В избранное',
        style: sightCardFavoritesBtnActiveTextStyle,
      ),
    );
  }
}
