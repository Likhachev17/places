import 'package:flutter/material.dart';
import 'package:places/constants.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/textStyles.dart';

//TODO если место закрыто, выводить worktime, иначе описание
//TODO приделать нормальный worktime вместо заглушки

///SightCard widget
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key key, this.sight}) : super(key: key);

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
              SightCardHeader(
                imageUrl: sight.url,
                type: sight.type,
              ),
              SightCardName(
                //(3)
                name: sight.nameSight,
              ),
              SightCardDetails(
                details: sight.details,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///Top half of Card widget
class SightCardHeader extends StatelessWidget {
  const SightCardHeader({
    Key key,
    @required this.imageUrl,
    @required this.type,
  }) : super(key: key);

  final String imageUrl;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 96,
          child: Image.network(
            imageUrl,
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
          child: IconButton(
            icon: Icon(Icons.favorite_border),
            color: AppColors.white,
            onPressed: () {},
          ),
        ),
        LinearProgressIndicator(),
      ],
    );
  }
}

///This widget displays sight name on card
class SightCardName extends StatelessWidget {
  const SightCardName({
    Key key,
    @required this.name,
  }) : super(key: key);

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

///This widget displays short description of the sight on card
class SightCardDetails extends StatelessWidget {
  const SightCardDetails({
    Key key,
    @required this.details,
  }) : super(key: key);

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
        style: sightCardDescriptionPreviewTextStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
