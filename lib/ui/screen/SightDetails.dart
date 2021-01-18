import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/theme/textStyles.dart';
import 'package:places/theme/colors.dart';

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
                Image.network(
                  sight.url,
                  fit: BoxFit.cover,
                  height: 360,
                ),
                Positioned(
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
                )
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
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: double.infinity,
                    ),
                    child: Text(
                      sight.nameSight,
                      style: sightCardNameDetailsTextStyle,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        sight.type,
                        style: sightCardTypeDetailsTextStyle,
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        'закрыто до 09:00',
                        style: sightCardWorkTimeDetailsTextStyle,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      sight.details,
                      style: sightCardDescriptionDetailsTextStyle,
                    ),
                  ),
                  FlatButton.icon(
                    //Как правильно выносить кнопки из кода, чтобы это было читаемо и понятно?
                    onPressed: () {},
                    color: Colors.green,
                    height: 48,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    icon: const Icon(
                      Icons.add_location_outlined,
                      color: AppColors.white,
                    ),
                    // здесь не та иконка. В фигме она составная. Ее нужно сверстать, вставить png или это вообще не важно?
                    label: const Text(
                      'ПОСТРОИТЬ МАРШРУТ',
                      style: TextStyle(color: AppColors.white, fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_today_rounded,
                          color: AppColors.inactive,
                        ),
                        label: Text(
                          'Запланировать',
                          style: sightCardToScheduleBtnInactiveTextStyle,
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: AppColors.primary,
                        ),
                        label: Text(
                          'В избранное',
                          style: sightCardFavoritesBtnActiveTextStyle,
                        ),
                      ),
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
