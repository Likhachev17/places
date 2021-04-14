import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/text_styles.dart';
import 'package:places/ui/widgets/network_image_with_loading_indicator';
import 'package:places/theme/custom_icons.dart';
import 'package:places/ui/widgets/sight_card_icon_buttons.dart';

//TODO если место закрыто, выводить worktime, иначе описание
//TODO приделать нормальный worktime вместо заглушки
/// SightCard widget
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key key, @required this.sight}) : assert(sight != null);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('InkWell sight card tapped'),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          height: 188,
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).cardColor),
          child: AspectRatio(
            aspectRatio: 3.0 / 2.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SightCardHeader(
                  url: sight.url,
                  type: sight.type,
                ),
                _SightCardName(
                  name: sight.nameSight,
                ),
                _SightCardDetails(
                  details: sight.details,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Top half of SightCard widget
class _SightCardHeader extends StatelessWidget {
  const _SightCardHeader({
    Key key,
    @required this.url,
    @required this.type,
    this.isHeart,
    this.isCalendar,
    this.isShare,
    this.isRemove,
  }) : assert(url != null && type != null);

  final String url;
  final String type;
  final bool isHeart;
  final bool isCalendar;
  final bool isShare;
  final bool isRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 96,
          child: NetworkImageWithLoadingIndicator(
            url: url,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Text(
            type,
            style: Theme
                .of(context)
                .textTheme
                .bodyText1
                .copyWith(color: AppColors.white),
          ),
        ),
        Positioned(
          top: 3,
          right: 2,
          child: ButtonsPackOnCard(isHeart: true,),
        ),
      ],
    );
  }
}

/// Sight name on card
class _SightCardName extends StatelessWidget {
  const _SightCardName({
    Key key,
    @required this.name,
  }) : assert(name != null);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 16,
      ),
      Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 2,
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 156),
          child: Text(
            name,
            textAlign: TextAlign.start,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: subtitle2TextStyle.copyWith(
                color: Theme
                    .of(context)
                    .buttonColor),
          ),
        ),
      ),
    ]);
  }
}

/// Short description of the sight on card
class _SightCardDetails extends StatelessWidget {
  const _SightCardDetails({
    Key key,
    @required this.details,
  }) : assert(details != null);

  final String details;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        top: 2,
        right: 16,
      ),
      width: double.infinity,
      child: Text(
        details,
        style: Theme
            .of(context)
            .textTheme
            .bodyText2
            .copyWith(color: AppColors.inactiveBlack),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

// чуть позже доведу до ума переиспользуемую карточку
/// Widget with sets of buttons on the top right card corner. If you need sightCard for SightListScreen, set [true] to bool isHeart.
/// If you need sightCard for visiting_screen(Want to visit), set [true] to isCalendar for a card with the "Calendar" and "Remove" buttons.
/// If you need sightCard for visiting_screen(Visited), set [true] to isShare for a card with the "Share" and "Remove" buttons.
class ButtonsPackOnCard extends StatelessWidget {
  final bool isHeart;
  final bool isCalendar;
  final bool isShare;

  const ButtonsPackOnCard({
    Key key,
    this.isHeart,
    this.isCalendar,
    this.isShare,
  }) : assert(
  isHeart != null || (isCalendar != null) || (isShare != null),
  );

  @override
  Widget build(BuildContext context) {
    if (isShare == true) {
      return Row(
        children: [
          iconButtonShare,
          SizedBox(
            width: 15,
          ),
          iconButtonRemove,
        ],
      );
    } else if (isCalendar == true) {
      return Row(
        children: [
          iconButtonCalendar,
          SizedBox(
            width: 15,
          ),
          iconButtonRemove,
        ],
      );
    } else {
      return iconButtonHeart;
    }
  }
}
