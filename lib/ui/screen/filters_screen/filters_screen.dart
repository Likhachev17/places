import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';
import 'package:places/mocks.dart';
import 'package:places/constants.dart';
import 'package:places/theme/colors.dart';
import 'package:places/theme/text_styles.dart';
import 'package:places/ui/screen/filters_screen/type_filter_item_widget.dart';
import 'package:places/ui/widgets/custom_bottom_navigation_bar.dart';
import 'dart:math';

/// Screen with filters
class FiltersScreen extends StatefulWidget {
  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  static const double _minRange = 100.0;
  static const double _maxRange = 10000.0;

  /// Slider's values
  RangeValues _rangeValues;

  /// Current location
  double _currentLat = 51.699799;
  double _currentLon = 39.205946;

  /// List of places
  final List<Sight> _sights = mocks;

  /// List of categories
  final List<SightType> _types = typeMocks;

  /// Selected categories to filter
  final List<String> _selectedTypes = [];

  /// Number of filtered items
  int _filteredCount;

  @override
  void initState() {
    super.initState();
    _initFilters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Theme.of(context).buttonColor,
              size: 20,
            ),
            onPressed: () {}),
        actions: [
          TextButton(
            onPressed: _clearFilters,
            child: Text(
              AppTexts.filtersClear,
              style: subtitle2TextStyle.copyWith(
                  color: Theme.of(context).accentColor),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.filtersCategories.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: AppColors.inactiveBlack),
            ),
            const SizedBox(
              height: 24.0,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _types.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 40,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (BuildContext context, int index) {
                return TypeFilterItemWidget(
                  sightType: _types[index],
                  onTap: () {
                    _onTypeSelect(_types[index].name);
                    _filteredCount = _calculateFilteredCount();
                  },
                  isSelected: _isTypeSelected(_types[index].name),
                );
              },
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppTexts.filtersDistance,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).buttonColor),
                ),
                Text(
                  _getDistanceLabel(),
                  style: TextStyle(color: Theme.of(context).disabledColor),
                ),
              ],
            ),
            RangeSlider(
              values: _rangeValues,
              min: _minRange,
              max: _maxRange,
              onChangeEnd: (_) {
                setState(
                  () => _filteredCount = _calculateFilteredCount(),
                );
              },
              onChanged: (newValues) {
                setState(() => _rangeValues = newValues);
              },
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).accentColor),
              ),
              onPressed: _onShowTap,
              child: Text(
                _getShowButtonLabel(),
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// showing range above slider
  String _getDistanceLabel() {
    String distLabel(double distanceMeters) {
      if (distanceMeters >= 1000) {
        return '${(distanceMeters / 1000).toStringAsFixed(0)} ${AppTexts.filtersDistanceKilometers}';
      }
      return '${(distanceMeters).toStringAsFixed(0)} ${AppTexts.filtersDistanceMeters}';
    }

    return '${AppTexts.filtersFrom} ${distLabel(_rangeValues.start)} ${AppTexts.filtersTo} ${distLabel(_rangeValues.end)}';
  }

  /// filter result value on button
  String _getShowButtonLabel() {
    return '${AppTexts.filtersShow.toUpperCase()} ($_filteredCount)';
  }

  /// return filtered places amount if >=1 filters enabled
  int _calculateFilteredCount() {
    final filteredSights = _sights
        .where((sight) => _selectedTypes.isNotEmpty
            ? _selectedTypes.contains(sight.type)
            : true)
        .where(
          (sight) => _isPointInsideRange(
            sight.lat,
            sight.lon,
            _rangeValues.start,
            _rangeValues.end,
          ),
        )
        .toList();

    return filteredSights.length;
  }

  /// clear filters
  void _clearFilters() {
    setState(() {
      _initFilters();
    });
  }

  /// set filters to default
  void _initFilters() {
    _rangeValues = RangeValues(_minRange, _maxRange);
    _selectedTypes.clear();
    _filteredCount = _calculateFilteredCount();
  }

  /// add or remove category by tap
  void _onTypeSelect(String typeName) {
    setState(() {
      _isTypeSelected(typeName)
          ? _selectedTypes.remove(typeName)
          : _selectedTypes.add(typeName);
    });
  }

  bool _isTypeSelected(String typeName) => _selectedTypes.contains(typeName);

  //TODO вернуть фильтр на экран sight list widget после задания 8.1
  void _onShowTap() {
    print(
        'minDistance: ${_rangeValues.start}\nmaxDistance ${_rangeValues.end}\ntypes: $_selectedTypes');
  }

  bool _isPointInsideRange(
      double lat, double lon, double minDistance, double maxDistance) {
    final double ky = 40000 / 360;
    final double kx = cos(pi * _currentLat / 180.0) * ky;
    final double dx = (_currentLon - lon).abs() * kx;
    final double dy = (_currentLat - lat).abs() * ky;
    final double dis = sqrt(dx * dx + dy * dy);
    return dis >= minDistance && dis <= maxDistance;
  }
}
