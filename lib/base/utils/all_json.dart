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
      "code": "HKG",
      "address": "Hong Kong, HK",
      "time": DateTime(2024, 12, 1, 5, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 1, 2024, 05:00 AM
    },
    "to": {
      "code": "SIN",
      "address": "Singapore, SG",
      "time": DateTime(2024, 12, 1, 11, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 1, 2024, 11:00 AM
    },
    "image": AppMedia.logo,
    "plane": "Cathay Pacific",
    "date": "Dec 1, 2024",
    "isDone": true,
    "seatNumber": "A12",
    "ticketId": "1000000000000001",
    "class": "Economy"
  },
  {
    "from": {
      "code": "JKT",
      "address": "Jakarta, ID",
      "time": DateTime(2024, 12, 2, 8, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 2, 2024, 08:30 AM
    },
    "to": {
      "code": "BKK",
      "address": "Bangkok, TH",
      "time": DateTime(2024, 12, 2, 14, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 2, 2024, 02:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Thai Airways",
    "date": "Dec 2, 2024",
    "isDone": false,
    "seatNumber": "B25",
    "ticketId": "1000000000000002",
    "class": "Business"
  },
  {
    "from": {
      "code": "DEL",
      "address": "Delhi, IN",
      "time": DateTime(2024, 12, 3, 10, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 3, 2024, 10:00 AM
    },
    "to": {
      "code": "LHR",
      "address": "London, UK",
      "time": DateTime(2024, 12, 3, 16, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 3, 2024, 04:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Air India",
    "date": "Dec 3, 2024",
    "isDone": true,
    "seatNumber": "C34",
    "ticketId": "1000000000000003",
    "class": "Economy"
  },
  {
    "from": {
      "code": "SYD",
      "address": "Sydney, AU",
      "time": DateTime(2024, 12, 4, 6, 45)
          .millisecondsSinceEpoch // Epoch time untuk Dec 4, 2024, 06:45 AM
    },
    "to": {
      "code": "JFK",
      "address": "New York, US",
      "time": DateTime(2024, 12, 4, 13, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 4, 2024, 01:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Qantas",
    "date": "Dec 4, 2024",
    "isDone": false,
    "seatNumber": "D45",
    "ticketId": "1000000000000004",
    "class": "Economy"
  },
  {
    "from": {
      "code": "HND",
      "address": "Tokyo, JP",
      "time": DateTime(2024, 12, 5, 12, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 5, 2024, 12:00 PM
    },
    "to": {
      "code": "CDG",
      "address": "Paris, FR",
      "time": DateTime(2024, 12, 5, 18, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 5, 2024, 06:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Japan Airlines",
    "date": "Dec 5, 2024",
    "isDone": true,
    "seatNumber": "E56",
    "ticketId": "1000000000000005",
    "class": "Business"
  },
  {
    "from": {
      "code": "HKG",
      "address": "Hong Kong, HK",
      "time": DateTime(2024, 12, 6, 9, 15)
          .millisecondsSinceEpoch // Epoch time untuk Dec 6, 2024, 09:15 AM
    },
    "to": {
      "code": "PVG",
      "address": "Shanghai, CN",
      "time": DateTime(2024, 12, 6, 15, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 6, 2024, 03:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Cathay Pacific",
    "date": "Dec 6, 2024",
    "isDone": false,
    "seatNumber": "F67",
    "ticketId": "1000000000000006",
    "class": "Economy"
  },
  {
    "from": {
      "code": "ICN",
      "address": "Seoul, KR",
      "time": DateTime(2024, 12, 7, 11, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 7, 2024, 11:30 AM
    },
    "to": {
      "code": "FRA",
      "address": "Frankfurt, DE",
      "time": DateTime(2024, 12, 7, 17, 45)
          .millisecondsSinceEpoch // Epoch time untuk Dec 7, 2024, 05:45 PM
    },
    "image": AppMedia.logo,
    "plane": "Korean Air",
    "date": "Dec 7, 2024",
    "isDone": true,
    "seatNumber": "G78",
    "ticketId": "1000000000000007",
    "class": "First"
  },
  {
    "from": {
      "code": "DEL",
      "address": "Delhi, IN",
      "time": DateTime(2024, 12, 8, 7, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 8, 2024, 07:00 AM
    },
    "to": {
      "code": "JFK",
      "address": "New York, US",
      "time": DateTime(2024, 12, 8, 13, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 8, 2024, 01:30 PM
    },
    "image": AppMedia.logo,
    "plane": "United Airlines",
    "date": "Dec 8, 2024",
    "isDone": false,
    "seatNumber": "H89",
    "ticketId": "1000000000000008",
    "class": "Economy"
  },
  {
    "from": {
      "code": "SIN",
      "address": "Singapore, SG",
      "time": DateTime(2024, 12, 9, 10, 15)
          .millisecondsSinceEpoch // Epoch time untuk Dec 9, 2024, 10:15 AM
    },
    "to": {
      "code": "SYD",
      "address": "Sydney, AU",
      "time": DateTime(2024, 12, 9, 16, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 9, 2024, 04:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Singapore Airlines",
    "date": "Dec 9, 2024",
    "isDone": true,
    "seatNumber": "J90",
    "ticketId": "1000000000000009",
    "class": "Business"
  },
  {
    "from": {
      "code": "BKK",
      "address": "Bangkok, TH",
      "time": DateTime(2024, 12, 10, 14, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 10, 2024, 02:00 PM
    },
    "to": {
      "code": "HND",
      "address": "Tokyo, JP",
      "time": DateTime(2024, 12, 10, 20, 15)
          .millisecondsSinceEpoch // Epoch time untuk Dec 10, 2024, 08:15 PM
    },
    "image": AppMedia.logo,
    "plane": "Thai Airways",
    "date": "Dec 10, 2024",
    "isDone": false,
    "seatNumber": "K01",
    "ticketId": "1000000000000010",
    "class": "Economy"
  },
  {
    "from": {
      "code": "LAX",
      "address": "Los Angeles, US",
      "time": DateTime(2024, 12, 11, 8, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 11, 2024, 08:00 AM
    },
    "to": {
      "code": "CDG",
      "address": "Paris, FR",
      "time": DateTime(2024, 12, 11, 14, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 11, 2024, 02:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Air France",
    "date": "Dec 11, 2024",
    "isDone": true,
    "seatNumber": "L23",
    "ticketId": "1000000000000011",
    "class": "First"
  },
  {
    "from": {
      "code": "CDG",
      "address": "Paris, FR",
      "time": DateTime(2024, 12, 12, 15, 45)
          .millisecondsSinceEpoch // Epoch time untuk Dec 12, 2024, 03:45 PM
    },
    "to": {
      "code": "BKK",
      "address": "Bangkok, TH",
      "time": DateTime(2024, 12, 12, 22, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 12, 2024, 10:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Thai Airways",
    "date": "Dec 12, 2024",
    "isDone": false,
    "seatNumber": "M34",
    "ticketId": "1000000000000012",
    "class": "Economy"
  },
  {
    "from": {
      "code": "PVG",
      "address": "Shanghai, CN",
      "time": DateTime(2024, 12, 13, 11, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 13, 2024, 11:30 AM
    },
    "to": {
      "code": "HKG",
      "address": "Hong Kong, HK",
      "time": DateTime(2024, 12, 13, 17, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 13, 2024, 05:00 PM
    },
    "image": AppMedia.logo,
    "plane": "China Eastern",
    "date": "Dec 13, 2024",
    "isDone": true,
    "seatNumber": "N45",
    "ticketId": "1000000000000013",
    "class": "Business"
  },
  {
    "from": {
      "code": "JFK",
      "address": "New York, US",
      "time": DateTime(2024, 12, 14, 10, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 14, 2024, 10:00 AM
    },
    "to": {
      "code": "DEL",
      "address": "Delhi, IN",
      "time": DateTime(2024, 12, 14, 16, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 14, 2024, 04:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Delta Airlines",
    "date": "Dec 14, 2024",
    "isDone": false,
    "seatNumber": "O56",
    "ticketId": "1000000000000014",
    "class": "Economy"
  },
  {
    "from": {
      "code": "FRA",
      "address": "Frankfurt, DE",
      "time": DateTime(2024, 12, 15, 7, 15)
          .millisecondsSinceEpoch // Epoch time untuk Dec 15, 2024, 07:15 AM
    },
    "to": {
      "code": "ICN",
      "address": "Seoul, KR",
      "time": DateTime(2024, 12, 15, 13, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 15, 2024, 01:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Lufthansa",
    "date": "Dec 15, 2024",
    "isDone": true,
    "seatNumber": "P67",
    "ticketId": "1000000000000015",
    "class": "Business"
  },
  {
    "from": {
      "code": "SYD",
      "address": "Sydney, AU",
      "time": DateTime(2024, 12, 16, 9, 45)
          .millisecondsSinceEpoch // Epoch time untuk Dec 16, 2024, 09:45 AM
    },
    "to": {
      "code": "LAX",
      "address": "Los Angeles, US",
      "time": DateTime(2024, 12, 16, 15, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 16, 2024, 03:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Qantas",
    "date": "Dec 16, 2024",
    "isDone": false,
    "seatNumber": "Q78",
    "ticketId": "1000000000000016",
    "class": "Economy"
  },
  {
    "from": {
      "code": "LHR",
      "address": "London, UK",
      "time": DateTime(2024, 12, 17, 14, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 17, 2024, 02:30 PM
    },
    "to": {
      "code": "JKT",
      "address": "Jakarta, ID",
      "time": DateTime(2024, 12, 17, 21, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 17, 2024, 09:00 PM
    },
    "image": AppMedia.logo,
    "plane": "British Airways",
    "date": "Dec 17, 2024",
    "isDone": true,
    "seatNumber": "R89",
    "ticketId": "1000000000000017",
    "class": "Business"
  },
  {
    "from": {
      "code": "CDG",
      "address": "Paris, FR",
      "time": DateTime(2024, 12, 18, 12, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 18, 2024, 12:00 PM
    },
    "to": {
      "code": "HND",
      "address": "Tokyo, JP",
      "time": DateTime(2024, 12, 18, 20, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 18, 2024, 08:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Air France",
    "date": "Dec 18, 2024",
    "isDone": false,
    "seatNumber": "S90",
    "ticketId": "1000000000000018",
    "class": "First"
  },
  {
    "from": {
      "code": "BKK",
      "address": "Bangkok, TH",
      "time": DateTime(2024, 12, 19, 10, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 19, 2024, 10:00 AM
    },
    "to": {
      "code": "PVG",
      "address": "Shanghai, CN",
      "time": DateTime(2024, 12, 19, 16, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 19, 2024, 04:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Thai Airways",
    "date": "Dec 19, 2024",
    "isDone": true,
    "seatNumber": "T12",
    "ticketId": "1000000000000019",
    "class": "Economy"
  },
  {
    "from": {
      "code": "MNL",
      "address": "Manila, PH",
      "time": DateTime(2024, 12, 20, 7, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 20, 2024, 07:30 AM
    },
    "to": {
      "code": "HKG",
      "address": "Hong Kong, HK",
      "time": DateTime(2024, 12, 20, 13, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 20, 2024, 01:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Philippine Airlines",
    "date": "Dec 20, 2024",
    "isDone": false,
    "seatNumber": "U23",
    "ticketId": "1000000000000020",
    "class": "Economy"
  },
  {
    "from": {
      "code": "HKG",
      "address": "Hong Kong, HK",
      "time": DateTime(2024, 12, 21, 8, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 21, 2024, 08:00 AM
    },
    "to": {
      "code": "JFK",
      "address": "New York, US",
      "time": DateTime(2024, 12, 21, 16, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 21, 2024, 04:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Cathay Pacific",
    "date": "Dec 21, 2024",
    "isDone": true,
    "seatNumber": "V34",
    "ticketId": "1000000000000021",
    "class": "Business"
  },
  {
    "from": {
      "code": "HND",
      "address": "Tokyo, JP",
      "time": DateTime(2024, 12, 22, 14, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 22, 2024, 02:00 PM
    },
    "to": {
      "code": "DEL",
      "address": "Delhi, IN",
      "time": DateTime(2024, 12, 22, 20, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 22, 2024, 08:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Japan Airlines",
    "date": "Dec 22, 2024",
    "isDone": false,
    "seatNumber": "W45",
    "ticketId": "1000000000000022",
    "class": "Economy"
  },
  {
    "from": {
      "code": "FRA",
      "address": "Frankfurt, DE",
      "time": DateTime(2024, 12, 23, 9, 15)
          .millisecondsSinceEpoch // Epoch time untuk Dec 23, 2024, 09:15 AM
    },
    "to": {
      "code": "LHR",
      "address": "London, UK",
      "time": DateTime(2024, 12, 23, 15, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 23, 2024, 03:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Lufthansa",
    "date": "Dec 23, 2024",
    "isDone": true,
    "seatNumber": "X56",
    "ticketId": "1000000000000023",
    "class": "Business"
  },
  {
    "from": {
      "code": "ICN",
      "address": "Seoul, KR",
      "time": DateTime(2024, 12, 24, 10, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 24, 2024, 10:30 AM
    },
    "to": {
      "code": "SYD",
      "address": "Sydney, AU",
      "time": DateTime(2024, 12, 24, 16, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 24, 2024, 04:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Korean Air",
    "date": "Dec 24, 2024",
    "isDone": false,
    "seatNumber": "Y78",
    "ticketId": "1000000000000024",
    "class": "Economy"
  },
  {
    "from": {
      "code": "JKT",
      "address": "Jakarta, ID",
      "time": DateTime(2024, 12, 25, 6, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 25, 2024, 06:00 AM
    },
    "to": {
      "code": "HKG",
      "address": "Hong Kong, HK",
      "time": DateTime(2024, 12, 25, 12, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 25, 2024, 12:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Garuda Indonesia",
    "date": "Dec 25, 2024",
    "isDone": true,
    "seatNumber": "Z01",
    "ticketId": "1000000000000025",
    "class": "First"
  },
  {
    "from": {
      "code": "SIN",
      "address": "Singapore, SG",
      "time": DateTime(2024, 12, 26, 11, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 26, 2024, 11:00 AM
    },
    "to": {
      "code": "BKK",
      "address": "Bangkok, TH",
      "time": DateTime(2024, 12, 26, 17, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 26, 2024, 05:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Singapore Airlines",
    "date": "Dec 26, 2024",
    "isDone": false,
    "seatNumber": "A15",
    "ticketId": "1000000000000026",
    "class": "Business"
  },
  {
    "from": {
      "code": "LAX",
      "address": "Los Angeles, US",
      "time": DateTime(2024, 12, 27, 15, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 27, 2024, 03:00 PM
    },
    "to": {
      "code": "CDG",
      "address": "Paris, FR",
      "time": DateTime(2024, 12, 27, 22, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 27, 2024, 10:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Delta Airlines",
    "date": "Dec 27, 2024",
    "isDone": true,
    "seatNumber": "B12",
    "ticketId": "1000000000000027",
    "class": "Economy"
  },
  {
    "from": {
      "code": "MNL",
      "address": "Manila, PH",
      "time": DateTime(2024, 12, 28, 12, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 28, 2024, 12:00 PM
    },
    "to": {
      "code": "HND",
      "address": "Tokyo, JP",
      "time": DateTime(2024, 12, 28, 18, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 28, 2024, 06:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Philippine Airlines",
    "date": "Dec 28, 2024",
    "isDone": false,
    "seatNumber": "C45",
    "ticketId": "1000000000000028",
    "class": "Business"
  },
  {
    "from": {
      "code": "FRA",
      "address": "Frankfurt, DE",
      "time": DateTime(2024, 12, 29, 9, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 29, 2024, 09:00 AM
    },
    "to": {
      "code": "LHR",
      "address": "London, UK",
      "time": DateTime(2024, 12, 29, 15, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 29, 2024, 03:30 PM
    },
    "image": AppMedia.logo,
    "plane": "Lufthansa",
    "date": "Dec 29, 2024",
    "isDone": true,
    "seatNumber": "D56",
    "ticketId": "1000000000000029",
    "class": "Economy"
  },
  {
    "from": {
      "code": "SYD",
      "address": "Sydney, AU",
      "time": DateTime(2024, 12, 30, 8, 30)
          .millisecondsSinceEpoch // Epoch time untuk Dec 30, 2024, 08:30 AM
    },
    "to": {
      "code": "LAX",
      "address": "Los Angeles, US",
      "time": DateTime(2024, 12, 30, 15, 0)
          .millisecondsSinceEpoch // Epoch time untuk Dec 30, 2024, 03:00 PM
    },
    "image": AppMedia.logo,
    "plane": "Qantas",
    "date": "Dec 30, 2024",
    "isDone": false,
    "seatNumber": "K12",
    "ticketId": "1000000000000030",
    "class": "Economy"
  }
];
