import 'package:flutter/material.dart';
import 'package:places/constants.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/textStyles.dart';

class SightCard extends StatelessWidget {
  //This class contain SightCard widget which builds by decoration with SightCardHeader(contains background image(1), sight type(2)), SightCardName(3) and SightCardDetails(4).
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
                // (1), (2)
                imageUrl: sight.url,
                type: sight.type,
              ),
              SightCardName(
                //(3)
                name: sight.nameSight,
              ),
              SightCardDetails(
                //(4)
                details: sight.details,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
            imageUrl, //(1)
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Text(
            type, //(2)
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
      ],
    );
  }
}

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
            name, //(3)
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
        details, //(4)
        style: sightCardDescriptionPreviewTextStyle,
        maxLines: 1,
        //Если название состоит из 3 и более слов, ужать описание до одной строки?
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
