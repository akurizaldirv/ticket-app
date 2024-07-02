import 'package:ticket_app/base/resource/media/app_media.dart';

List<Map<String, dynamic>> hotelList = [
  {
    "title": "Bougenville Hotel",
    "address": "St. Bougenville 27, New York",
    "price": 200,
    "photo": AppMedia.hotel1
  },
  {
    "title": "Rosewood Hotel",
    "address": "St. Rosewood 45, Paris",
    "price": 180,
    "photo": AppMedia.hotel2
  },
  {
    "title": "Lily Inn",
    "address": "St. Lily 12, London",
    "price": 220,
    "photo": AppMedia.hotel3
  },
  {
    "title": "Orchid Resort",
    "address": "St. Orchid 34, Tokyo",
    "price": 250,
    "photo": AppMedia.hotel1
  },
  {
    "title": "Daisy Lodge",
    "address": "St. Daisy 56, Sydney",
    "price": 190,
    "photo": AppMedia.hotel2
  },
  {
    "title": "Tulip Suites",
    "address": "St. Tulip 78, Amsterdam",
    "price": 210,
    "photo": AppMedia.hotel3
  },
  {
    "title": "Sunflower Inn",
    "address": "St. Sunflower 90, Berlin",
    "price": 230,
    "photo": AppMedia.hotel2
  },
  {
    "title": "Marigold Motel",
    "address": "St. Marigold 11, Rome",
    "price": 170,
    "photo": AppMedia.hotel2
  },
  {
    "title": "Lavender Hotel",
    "address": "St. Lavender 22, Madrid",
    "price": 200,
    "photo": AppMedia.hotel1
  },
  {
    "title": "Cherry Blossom Hotel",
    "address": "St. Cherry Blossom 33, Seoul",
    "price": 240,
    "photo": AppMedia.hotel3
  },
];

List<Map<String, dynamic>> ticketList = [
  {
    "from": {
      "code": "JKT",
      "address": "Jakarta, ID",
      "time": "10:00 AM"
    },
    "to": {
      "code": "TKY",
      "address": "Tokyo, JPN",
      "time": "14:00 PM"
    },
    "image": AppMedia.logo,
    "plane": "Garuda",
    "date": "Nov 12, 2024"
  },
  {
    "from": {
      "code": "SIN",
      "address": "Singapore, SG",
      "time": "11:00 AM"
    },
    "to": {
      "code": "HKG",
      "address": "Hong Kong, HK",
      "time": "15:00 PM"
    },
    "image": AppMedia.logo,
    "plane": "Singapore Airlines",
    "date": "Nov 13, 2024"
  },
  {
    "from": {
      "code": "BKK",
      "address": "Bangkok, TH",
      "time": "12:00 PM"
    },
    "to": {
      "code": "SYD",
      "address": "Sydney, AU",
      "time": "18:00 PM"
    },
    "image": AppMedia.logo,
    "plane": "Thai Airways",
    "date": "Nov 14, 2024"
  },
  {
    "from": {
      "code": "KUL",
      "address": "Kuala Lumpur, MY",
      "time": "13:00 PM"
    },
    "to": {
      "code": "DXB",
      "address": "Dubai, UAE",
      "time": "19:00 PM"
    },
    "image": AppMedia.logo,
    "plane": "Malaysia Airlines",
    "date": "Nov 15, 2024"
  },
  {
    "from": {
      "code": "DEL",
      "address": "Delhi, IN",
      "time": "14:00 PM"
    },
    "to": {
      "code": "LHR",
      "address": "London, UK",
      "time": "20:00 PM"
    },
    "image": AppMedia.logo,
    "plane": "Air India",
    "date": "Nov 16, 2024"
  },
  {
    "from": {
      "code": "CGK",
      "address": "Jakarta, ID",
      "time": "15:00 PM"
    },
    "to": {
      "code": "JFK",
      "address": "New York, US",
      "time": "21:00 PM"
    },
    "image": AppMedia.logo,
    "plane": "American Airlines",
    "date": "Nov 17, 2024"
  },
  {
    "from": {
      "code": "MNL",
      "address": "Manila, PH",
      "time": "16:00 PM"
    },
    "to": {
      "code": "LAX",
      "address": "Los Angeles, US",
      "time": "22:00 PM"
    },
    "image": AppMedia.logo,
    "plane": "Philippine Airlines",
    "date": "Nov 18, 2024"
  },
  {
    "from": {
      "code": "ICN",
      "address": "Seoul, KR",
      "time": "17:00 PM"
    },
    "to": {
      "code": "FRA",
      "address": "Frankfurt, DE",
      "time": "23:00 PM"
    },
    "image": AppMedia.logo,
    "plane": "Korean Air",
    "date": "Nov 19, 2024"
  },
  {
    "from": {
      "code": "HND",
      "address": "Tokyo, JP",
      "time": "18:00 PM"
    },
    "to": {
      "code": "CDG",
      "address": "Paris, FR",
      "time": "00:00 AM"
    },
    "image": AppMedia.logo,
    "plane": "Japan Airlines",
    "date": "Nov 20, 2024"
  },
  {
    "from": {
      "code": "PVG",
      "address": "Shanghai, CN",
      "time": "19:00 PM"
    },
    "to": {
      "code": "SFO",
      "address": "San Francisco, US",
      "time": "01:00 AM"
    },
    "image": AppMedia.logo,
    "plane": "China Eastern",
    "date": "Nov 21, 2024"
  }
];