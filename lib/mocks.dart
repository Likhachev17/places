import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/domain/sight_type.dart';

/// Categories
final List<SightType> typeMocks = [
  SightType(
    name: 'Отель',
    iconName: 'Hotel',
  ),
  SightType(
    name: 'Ресторан',
    iconName: 'Restaurant',
  ),
  SightType(
    name: 'Особое место',
    iconName: 'ParticularPlace',
  ),
  SightType(
    name: 'Парк',
    iconName: 'Park',
  ),
  SightType(
    name: 'Музей',
    iconName: 'Museum',
  ),
  SightType(
    name: 'Кафе',
    iconName: 'Cafe',
  ),
];

/// Places
final List<Sight> mocks = [
  Sight(
    nameSight: 'Surf Studio',
    lat: 51.664264,
    lon: 39.201271,
    url: 'https://ia.wampi.ru/2020/12/25/OLE30HKCAqA.jpg',
    details:
        'офис Surf Studio. Нормальной фотки не нашел, поэтому вот вам я. В камеру смотрю',
    type: 'Музей',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 9, minute: 0),
    closeTime: TimeOfDay(hour: 21, minute: 0),
  ),
  Sight(
    nameSight: 'Мой дом',
    lat: 51.700504,
    lon: 39.204497,
    url: 'https://ia.wampi.ru/2020/12/25/IhgbY-glBRY.jpg',
    details: 'Мой дом. Здесь я сижу и смотрю вас',
    type: 'Музей',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 7, minute: 0),
    closeTime: TimeOfDay(hour: 21, minute: 0),
  ),
  Sight(
    nameSight: 'Блошиный рынок',
    lat: 51.705625,
    lon: 39.137255,
    url: 'https://ia.wampi.ru/2020/12/25/nsMGyaYgKFI.jpg',
    details:
        'Блошиный рынок. Довольно странное место, но здесь я провожу все выходные покупая ерунду',
    type: 'Парк',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 9, minute: 0),
    closeTime: TimeOfDay(hour: 12, minute: 0),
  ),
  Sight(
    nameSight: 'Рейв в лесу',
    lat: 51.788332,
    lon: 39.205264,
    url: 'https://ia.wampi.ru/2021/01/16/IMG_20200822_030142.jpg',
    details:
        'Меня как-то угораздило сюда попасть. Выглядит клево, но жутковато:D',
    type: 'Особое место',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 22, minute: 0),
    closeTime: TimeOfDay(hour: 23, minute: 59),
  ),
  Sight(
    nameSight: 'Русский магазин в Гуанчжоу',
    lat: 23.098822,
    lon: 113.314972,
    url: 'https://ia.wampi.ru/2021/01/16/IMG_20190921_203644_105.jpg',
    details:
        'Самое популярное место сбора моделей в Гуанчжоу. Атмосферные вечера с ребятами из разных стран и знакомые продукты из СНГ. Эх, вернуться бы туда на вечерок)',
    type: 'Ресторан',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 20, minute: 0),
    closeTime: TimeOfDay(hour: 23, minute: 0),
  ),
  Sight(
    nameSight: 'Шанхай',
    lat: 31.273409,
    lon: 121.474693,
    url: 'https://ia.wampi.ru/2021/01/16/IMG_20190226_095603.jpg',
    details:
        'А здесь я жил и работал в Шанхае. Очень красивый и невероятно современный город',
    type: 'Особое место',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 9, minute: 0),
    closeTime: TimeOfDay(hour: 21, minute: 0),
  ),
  Sight(
    nameSight: 'Хочу на стажировку',
    lat: 51.664264,
    lon: 39.201271,
    url: 'https://ic.wampi.ru/2021/03/11/Y6iQsGiA1qw.jpg',
    details:
        'Давно хочу у вас работать! Я даже специально купил новый мак на М1 с 16гб!',
    type: 'Особое место',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 9, minute: 0),
    closeTime: TimeOfDay(hour: 21, minute: 0),
  ),
];
