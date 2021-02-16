import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/constants.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/custom_icons.dart';
import 'package:places/theme/text_styles.dart';
import 'package:places/ui/widgets/network_image_with_loading_indicator';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/theme/custom_icons.dart';

/// SightCard widget
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key key, @required this.sight}) : assert(sight != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        height: 188,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: AppDecorations.cardDecoration,
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
              _SightCardScheduledDate(
                scheduledDate: AppTexts.scheduledDateFalse,
              ),
              _SightCardWorkTime(
                workTime: AppTexts.workTimeFalse,
              ),
            ],
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
  }) : assert(url != null && type != null);

  final String url;
  final String type;

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
            style: sightCardTypePreviewTextStyle,
          ),
        ),
        Positioned(
          top: 3,
          right: 2,
          child: Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(iconCalendar),
                color: AppColors.white,
                onPressed: () {},
              ),
              SizedBox(
                height: 22,
                width: 23,
              ),
              IconButton(
                icon: SvgPicture.asset(iconRemove),
                color: AppColors.white,
                onPressed: () {},
              ),
            ],
          ),
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
            style: sightCardNamePreviewTextStyle,
          ),
        ),
      ),
    ]);
  }
}

/// Sight card scheduled date
class _SightCardScheduledDate extends StatelessWidget {
  const _SightCardScheduledDate({
    Key key,
    @required this.scheduledDate,
  }) : assert(scheduledDate != null);

  final String scheduledDate;

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
        scheduledDate,
        style: sightCardWantToVisitScheduleDate,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

/// Sight card work time
class _SightCardWorkTime extends StatelessWidget {
  const _SightCardWorkTime({
    Key key,
    @required this.workTime,
  }) : assert(workTime != null);

  final String workTime;

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
        workTime,
        style: sightCardWantToVisitVisited,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
