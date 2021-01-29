import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/theme/colors.dart';
import 'package:places/ui/widgets/NetworkImageWithLoadingIndicator';

/// Model of Sight details screen
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
                _CardDetailsImage(url: sight.url),
                _CardDetailsBackButton(),
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
                  _CardDetailsName(name: sight.nameSight),
                  Row(
                    children: [
                      _CardDetailsType(type: sight.type),
                      const SizedBox(width: 16),
                      _CardDetailsWorkTime(
                        workTime: sight.workTime,
                      ),
                    ],
                  ),
                  _CardDetailsDescription(details: sight.details),
                  _CardDetailsBuildARouteBtn(),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _CardDetailsToScheduleBtn(),
                      _CardDetailsToFavoritesBtn(),
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

/// images of the sight on the sight details screen
class _CardDetailsImage extends StatelessWidget {
  const _CardDetailsImage({Key key, @required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: double.infinity,
      height: 360,
      child: NetworkImageWithLoadingIndicator(
        url: url,
        fit: BoxFit.cover,
      ),
    ));
  }
}

/// White "back" button in the upper left corner on the sight details screen
class _CardDetailsBackButton extends StatelessWidget {
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

/// name of the sight on the sight details screen
class _CardDetailsName extends StatelessWidget {
  const _CardDetailsName({Key key, @required this.name}) : super(key: key);
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

/// type of the sight on the sight details screen
class _CardDetailsType extends StatelessWidget {
  const _CardDetailsType({Key key, @required this.type}) : super(key: key);
  final String type;

  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      style: sightCardTypeDetailsTextStyle,
    );
  }
}

/// working time of the sight on the sight details screen
class _CardDetailsWorkTime extends StatelessWidget {
  const _CardDetailsWorkTime({Key key, @required this.workTime})
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

/// full description of the sight on the sight details screen
class _CardDetailsDescription extends StatelessWidget {
  const _CardDetailsDescription({Key key, @required this.details})
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

/// "Build a route" button on the sight details screen
class _CardDetailsBuildARouteBtn extends StatelessWidget {
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

/// "To schedule" button on the sight details screen
class _CardDetailsToScheduleBtn extends StatelessWidget {
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

/// "To favorites" button on the sight details screen
class _CardDetailsToFavoritesBtn extends StatelessWidget {
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
