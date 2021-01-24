import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/theme/colors.dart';

/// This class builds page "details" of sight card
class SightDetails extends StatelessWidget {
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
                CardDetailsImage(url: sight.url),
                CardDetailsBackButton(),
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
                  CardDetailsName(name: sight.nameSight),
                  Row(
                    children: [
                      CardDetailsType(type: sight.type),
                      const SizedBox(width: 16),
                      CardDetailsWorkTime(
                        workTime: sight.workTime,
                      ),
                    ],
                  ),
                  CardDetailsDescription(details: sight.details),
                  CardDetailsBuildARouteBtn(),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardDetailsToScheduleBtn(),
                      CardDetailsToFavoritesBtn(),
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

///This widget displays images of the sight on the sight details screen
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

///White "back" button in the upper left corner on the sight details screen
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

///This widget displays name of the sight on the sight details screen
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

///This widget displays type of the sight on the sight details screen
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

///This widget displays working time of the sight on the sight details screen
class CardDetailsWorkTime extends StatelessWidget {
  const CardDetailsWorkTime({Key key, @required this.workTime})
      : super(key: key);
  final String workTime;

  @override
  Widget build(BuildContext context) {
    return Text(
      workTime,
      style: sightCardWorkTimeDetailsTextStyle,
    );
  }
}

///This widget displays full description of the sight on the sight details screen
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

///This widget displays "Build a route" button on the sight details screen
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

///This widget displays "To schedule" button on the sight details screen
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

///This widget displays "To favorites" button on the sight details screen
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
