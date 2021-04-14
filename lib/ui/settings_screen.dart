import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/constants.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/custom_icons.dart';
import 'package:places/theme/text_styles.dart';
import 'package:places/ui/widgets/custom_bottom_navigation_bar.dart';
import '../main.dart';

/// Model of Settings Screen
class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.settings,
          style: TextStyle(color: Theme.of(context).buttonColor),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          SizedBox(height: 36),
          SwitchListTile(
            //ВОПРОС: Как спрятать параметры внешнего вида? В конструкторе темы не нашел подходящего инструмента. На SwitchTheme тоже не реагирует.
            activeColor: AppColors.white,
            inactiveThumbColor: AppColors.white,
            inactiveTrackColor: AppColors.inactiveBlack,
            activeTrackColor: Theme.of(context).accentColor,
            controlAffinity: ListTileControlAffinity.platform,
            title: Text(
              AppTexts.darkTheme,
              style: subtitle2TextStyle.copyWith(
                  color: Theme.of(context).buttonColor,
                  fontWeight: FontWeight.w400),
            ),
            value: themeState.isDark,
            onChanged: _onChangeTheme,
          ),
          Divider(
            indent: 16,
            endIndent: 16,
          ),
          ListTile(
            title: Text(
              AppTexts.watchTutorial,
              style: subtitle2TextStyle.copyWith(
                  color: Theme.of(context).buttonColor,
                  fontWeight: FontWeight.w400),
            ),
            trailing: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: SvgPicture.asset(iconInfo),
            ),
          ),
          Divider(
            indent: 16,
            endIndent: 16,
          ),
        ],
      ),
    );
  }

  void _onChangeTheme(bool newValue) => themeState.isDark = newValue;
}
