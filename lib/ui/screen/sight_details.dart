import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/ui/widgets/network_image_with_loading_indicator';
import 'package:places/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/theme/custom_icons.dart';

/// Model of Sight details screen
class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({
    Key key,
    @required this.sight,
  }) : assert(sight != null);

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

/// Images of the sight on the sight details screen
class _CardDetailsImage extends StatelessWidget {
  const _CardDetailsImage({Key key, @required this.url}) : assert(url != null);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 360,
      child: NetworkImageWithLoadingIndicator(
        url: url,
        fit: BoxFit.cover,
      ),
    );
  }
}

/// White/black "back" button in the upper left corner on the sight details screen
class _CardDetailsBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 36,
      left: 16,
      child: SizedBox(
        width: 32,
        height: 32,
        child: ElevatedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.all(0),
            ),
          ),
          onPressed: () => print('button "back" tapped'),
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 15,
            color: Theme.of(context).buttonColor,
          ),
        ),
      ),
    );
  }
}

/// Name of the sight on the sight details screen
class _CardDetailsName extends StatelessWidget {
  const _CardDetailsName({Key key, @required this.name}) : assert(name != null);
  final String name;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
      ),
      child: Text(
        name,
        style: Theme
            .of(context)
            .textTheme
            .headline2
            .copyWith(color: Theme
            .of(context)
            .buttonColor),
      ),
    );
  }
}

/// Type of the sight on the sight details screen
class _CardDetailsType extends StatelessWidget {
  const _CardDetailsType({Key key, @required this.type}) : assert(type != null);
  final String type;

  @override
  Widget build(BuildContext context) {
    return Text(
      type,
      style: Theme
          .of(context)
          .textTheme
          .bodyText1
          .copyWith(color: Theme
          .of(context)
          .buttonColor),
    );
  }
}

/// Working time of the sight on the sight details screen
class _CardDetailsWorkTime extends StatelessWidget {
  const _CardDetailsWorkTime({Key key, @required this.workTime})
      : assert(workTime != null);
  final String workTime;

  @override
  Widget build(BuildContext context) {
    return Text(
      workTime,
      style: Theme
          .of(context)
          .textTheme
          .bodyText2
          .copyWith(color: Theme
          .of(context)
          .disabledColor),
    );
  }
}

/// Full description of the sight on the sight details screen
class _CardDetailsDescription extends StatelessWidget {
  const _CardDetailsDescription({Key key, @required this.details})
      : assert(details != null);
  final String details;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Text(
        details,
        style: Theme
            .of(context)
            .textTheme
            .bodyText2
            .copyWith(color: Theme
            .of(context)
            .buttonColor),
        textAlign: TextAlign.left,
      ),
    );
  }
}

/// "Build a route" button on the sight details screen
class _CardDetailsBuildARouteBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all(Theme
            .of(context)
            .accentColor),
      ),
      onPressed: () => print('button "Build a route" tapped'),
      icon: SvgPicture.asset(
        iconGO,
        color: AppColors.white,
      ),
      label: Text(
        AppTexts.buildARouteBtnText,
        style: Theme
            .of(context)
            .textTheme
            .bodyText1
            .copyWith(color: AppColors.white),
      ),
    );
  }
}

/// "To schedule" button on the sight details screen
class _CardDetailsToScheduleBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => print('button "back" tapped'),
      icon: SvgPicture.asset(
        iconCalendar,
        color: AppColors.inactiveBlack,
      ),
      label: Text(
        AppTexts.toScheduleBtnText,
        style: Theme
            .of(context)
            .textTheme
            .bodyText2
            .copyWith(
          color: AppColors.inactiveBlack,
        ),
      ),
    );
  }
}

/// "To favorites" button on the sight details screen
class _CardDetailsToFavoritesBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => print('button "To favorites" tapped'),
      icon: SvgPicture.asset(
        iconHeart,
        color: Theme
            .of(context)
            .buttonColor,
      ),
      label: Text(
        AppTexts.toFavoritesBtnText,
        style: Theme
            .of(context)
            .textTheme
            .bodyText2
            .copyWith(color: Theme
            .of(context)
            .buttonColor),
      ),
    );
  }
}
