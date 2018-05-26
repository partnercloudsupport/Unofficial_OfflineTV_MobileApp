import 'package:flutter/material.dart';

const List<String> youtubeUsers = [
  "Scarra",
  "Pokimane",
  "Disguised Toast",
  "Lilypichu",
  "Fedmyster",
  "Xell",
  "TheeMarkZ",
  "Based Yoona"
];

const Map<String, String> youtubeUserToId = {
  "Scarra": "UCan_L4XHfSbCKaTCcntyLTQ",
  "Pokimane": "UChXKjLEzAB1K7EZQey7Fm1Q",
  "Disguised Toast": "UCUT8RoNBTJvwW1iErP6-b-A",
  "Lilypichu": "UCvWU1K29wCZ8j1NsXsRrKnA",
  "Fedmyster": "UCOmXyEquWIIo1uAj_2LN4UA",
  "Xell": "UCksmCymEjGvxXEkcRWR8wbQ",
  "TheeMarkZ": "UCU74OVWGSmJqR1g6y-tgUHQ",
  "Based Yoona": "UC8GNFT4yPKeSOzPgYmmikuw"
};

const Color backgroundColor = Color.fromRGBO(39, 43, 50, 1.0);
const Color backgroundContrast = Color.fromRGBO(35, 38, 45, 1.0);
const Color merchColor = Color.fromRGBO(147, 177, 180, 1.0);
const Color youtubeColor = Color.fromRGBO(205, 32, 31, 1.0);
const Color youtubeContrast = Color.fromRGBO(201, 25, 28, 1.0);
const Color youtubeContrast2 = Color.fromRGBO(195, 13, 24, 1.0);
const Color merchItemBackgroundColor = Color.fromRGBO(246, 245, 250, 1.0);
const Color twitterColor = Color.fromRGBO(29, 161, 243, 1.0);

const String merchUrl = "https://teespring.com/stores/offline-tv-official-merch";

const Map<String, String> merchIdAndPrice = {
  "Offline TV Season 1 Poster": "\$21",
  "OfflineTV.GG/Merch Tee": "\$23",
  "OfflineTV.GG/Merch Hoodie": "\$34",
  "OfflineTV.GG/Merch Sleeved": "\$24",
  "OfflineTV Classic Men's Tee": "\$25",
  "OfflineTV Classic Women's Tee": "\$25",
  "OfflineTV Classic Hoodie": "\$36",
  "OfflineTV Classic Sleeved": "\$26",
  "Pocket Scarra Tee": "\$25",
  "Pocket Poki Tee": "\$25",
  "World's Best Dad Mug": "\$15",
  "OfflineTV Pocket": "\$25",
  "Editors Are People Too Tee": "\$25",
  "Pocket Temmie Tee": "\$25",
  "Pocket Fed Tee": "\$25",
  "OfflineTV Weeb Tee": "\$25",
  "OfflineTV Tee": "\$25",
  "Pocket Lily Tee": "\$25",
  "Classy Thicc Tee": "\$25",
};

const Map<String, String> merchNametoId = {
  "Offline TV Season 1 Poster": "560",
  "OfflineTV.GG/Merch Tee": "561",
  "OfflineTV.GG/Merch Hoodie": "562",
  "OfflineTV.GG/Merch Sleeved": "563",
  "OfflineTV Classic Men's Tee": "564",
  "OfflineTV Classic Women's Tee": "565",
  "OfflineTV Classic Hoodie": "566",
  "OfflineTV Classic Sleeved": "567",
  "Pocket Scarra Tee": "568",
  "Pocket Poki Tee": "569",
  "World's Best Dad Mug": "570",
  "OfflineTV Pocket": "571",
  "Editors Are People Too Tee": "572",
  "Pocket Temmie Tee": "573",
  "Pocket Fed Tee": "574",
  "OfflineTV Weeb Tee": "575",
  "OfflineTV Tee": "576",
  "Pocket Lily Tee": "577",
  "Classy Thicc Tee": "578",
};

const Map<String, String> merchNametoVersions = {
  "Offline TV Season 1 Poster": "1",
  "OfflineTV.GG/Merch Tee": "1",
  "OfflineTV.GG/Merch Hoodie": "1",
  "OfflineTV.GG/Merch Sleeved": "1",
  "OfflineTV Classic Men's Tee": "5",
  "OfflineTV Classic Women's Tee": "4",
  "OfflineTV Classic Hoodie": "4",
  "OfflineTV Classic Sleeved": "4",
  "Pocket Scarra Tee": "5",
  "Pocket Poki Tee": "4",
  "World's Best Dad Mug": "4",
  "OfflineTV Pocket": "4",
  "Editors Are People Too Tee": "4",
  "Pocket Temmie Tee": "5",
  "Pocket Fed Tee": "5",
  "OfflineTV Weeb Tee": "4",
  "OfflineTV Tee": "4",
  "Pocket Lily Tee": "4",
  "Classy Thicc Tee": "1",
};

const Map<String, String> merchNametoDesc = {
  "Offline TV Season 1 Poster": "Premium Poster",
  "OfflineTV.GG/Merch Tee": "Premium Tee",
  "OfflineTV.GG/Merch Hoodie": "Premium Hoodie",
  "OfflineTV.GG/Merch Sleeved": "Premium Sleeved",
  "OfflineTV Classic Men's Tee": "Premium Tee",
  "OfflineTV Classic Women's Tee": "Premium Tee",
  "OfflineTV Classic Hoodie": "Premium Hoodie",
  "OfflineTV Classic Sleeved": "Premium Sleeved",
  "Pocket Scarra Tee": "Premium Tee",
  "Pocket Poki Tee": "Premium Tee",
  "World's Best Dad Mug": "Premium Mug",
  "OfflineTV Pocket": "Premium Tee",
  "Editors Are People Too Tee": "Premium Tee",
  "Pocket Temmie Tee": "Premium Tee",
  "Pocket Fed Tee": "Premium Tee",
  "OfflineTV Weeb Tee": "Premium Tee",
  "OfflineTV Tee": "Premium Tee",
  "Pocket Lily Tee": "Premium Tee",
  "Classy Thicc Tee": "1Premium Tee",
};