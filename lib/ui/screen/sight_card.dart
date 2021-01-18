import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:flutter/widgets.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/textStyles.dart';

// Первый опыт верстки. Все может выглядеть сумбурно, потому что очень радуюсь:DD

class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({Key key, this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              //top half with image
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    sight.url,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              width: double.infinity,
              height: 96,

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Text(
                      sight.type,
                      style: sightCardTypePreviewTextStyle,
                    ),
                  ),
                  Container(
                    // TODO: IconHeart
                    margin: EdgeInsets.only(top: 19, right: 18),
                    height: 20,
                    width: 18,
                    child: Icon(Icons.add_box), // другой пока не нашел
                  ),
                ],
              ),
            ),
            Container(
              //bottom half with texts
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: AppColors.white,
              ),
              width: double.infinity,
              height: 92,

              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: Text(
                        sight.nameSight,
                        maxLines: 2,
                        style: sightCardNamePreviewTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        bottom: 16,
                        right: 16,
                        top: 2,
                      ),
                      // наверное мне следует отступать от названия места, а не от дна? Это мой первый опыт)) любые комментарии полезны
                      child: Text(
                        sight.details,
                        style: sightCardDescriptionPreviewTextStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
