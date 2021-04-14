import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/domain/sight_type_icon_helper.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/custom_icons.dart';

class TypeFilterItemWidget extends StatelessWidget {
  final SightType sightType;
  final bool isSelected;
  final VoidCallback onTap;

  const TypeFilterItemWidget({
    Key key,
    @required this.sightType,
    @required this.onTap,
    @required this.isSelected,
  })  : assert(sightType != null),
        assert(isSelected != null),
        assert(onTap != null);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .accentColor
                    .withOpacity(isSelected ? 0.3 : 0.1),
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  Center(
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return SvgPicture.asset(
                          getIconByName(sightType.iconName),
                          width: 32,
                          height: 32,
                          color: Theme.of(context).accentColor,
                        );
                      },
                    ),
                  ),
                  if (isSelected)
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset(
                        //ВОПРОС: Иконка на превью выглядит так, будто сама "галочка в центре не вырезана. При попытке покрасить получается просто цветной кружок. Возможно использовать только дефолтный вид. Тянуть две иконки?
                        iconChoice,
                      ),
                    )
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 16,
            width: 96,
            child: Text(
              sightType.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Theme.of(context).buttonColor),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
