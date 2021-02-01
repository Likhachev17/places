import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

final List<Sight> mocks = [
  Sight(
    nameSight: 'Surf Studio',
    lan: 51.664264,
    lon: 39.201271,
    url: 'https://ia.wampi.ru/2020/12/25/OLE30HKCAqA.jpg',
    details:
        'офис Surf Studio. Нормальной фотки не нашел, поэтому вот вам я. В камеру смотрю',
    type: 'building',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 9, minute: 0),
    closeTime: TimeOfDay(hour: 21, minute: 0),
  ),
  Sight(
    nameSight: 'Мой дом',
    lan: 51.700504,
    lon: 39.204497,
    url: 'https://ia.wampi.ru/2020/12/25/IhgbY-glBRY.jpg',
    details: 'Мой дом. Здесь я сижу и смотрю вас',
    type: 'building',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 7, minute: 0),
    closeTime: TimeOfDay(hour: 21, minute: 0),
  ),
  Sight(
    nameSight: 'Блошиный рынок',
    lan: 51.705625,
    lon: 39.137255,
    url: 'https://ia.wampi.ru/2020/12/25/nsMGyaYgKFI.jpg',
    details:
    'Блошиный рынок. Довольно странное место, но здесь я провожу все выходные покупая ерунду',
    type: 'event',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 9, minute: 0),
    closeTime: TimeOfDay(hour: 12, minute: 0),
  ),
  Sight(
    nameSight: 'Рейв в лесу',
    lan: 51.788332,
    lon: 39.205264,
    url: 'https://ia.wampi.ru/2021/01/16/IMG_20200822_030142.jpg',
    details:
    'Меня как-то угораздило сюда попасть. Выглядит клево, но жутковато:D',
    type: 'event',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 22, minute: 0),
    closeTime: TimeOfDay(hour: 23, minute: 59),
  ),
  Sight(
    nameSight: 'Русский магазин в Гуанчжоу',
    lan: 23.098822,
    lon: 113.314972,
    url: 'https://ia.wampi.ru/2021/01/16/IMG_20190921_203644_105.jpg',
    details:
    'Самое популярное место сбора моделей в Гуанчжоу. Атмосферные вечера с ребятами из разных стран и знакомые продукты из СНГ. Эх, вернуться бы туда на вечерок)',
    type: 'place',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 20, minute: 0),
    closeTime: TimeOfDay(hour: 23, minute: 0),
  ),
  Sight(
    nameSight: 'Шанхай',
    lan: 31.273409,
    lon: 121.474693,
    url: 'https://ia.wampi.ru/2021/01/16/IMG_20190226_095603.jpg',
    details:
    'А здесь я жил и работал в Шанхае. Очень красивый и невероятно современный город',
    type: 'place',
    workTime: 'Закрыто до 09:00',
    openTime: TimeOfDay(hour: 9, minute: 0),
    closeTime: TimeOfDay(hour: 21, minute: 0),
  ),
];
