import 'package:logger/logger.dart';
import 'package:we_date/core/utils/image_urls.dart';

const double distanceChangeThreshold = 500;
final logger = Logger();
const hasSeenOrSkippedSplash = "hasSeenOrSkippedSplash";
const authenticated = "authenticated";

List<Map<String, dynamic>> interests = [
  {"image": ImageURLS.musicImg, "text": "Music", "isSelected": false},
  {"text": "Cooking", "image": ImageURLS.cooking, "isSelected": false},
  {"text": "Shopping", "image": ImageURLS.shoppingImg, "isSelected": false},
  {"text": "Gym & Fitness", "image": ImageURLS.gymImg, "isSelected": false},
  {"text": "Travelling", "image": ImageURLS.travellingImg, "isSelected": false},
  {"text": "Swimming", "image": ImageURLS.swimmingImg, "isSelected": false},
  {"text": "Party", "image": ImageURLS.partyImg, "isSelected": false},
  {"text": "Singing", "image": ImageURLS.singingImg, "isSelected": false},
  {"text": "Dance", "image": ImageURLS.danceImg, "isSelected": false},
  {"text": "Reading", "image": ImageURLS.readingImg, "isSelected": false},
  {"text": "Sports", "image": ImageURLS.sports, "isSelected": false},
  {"text": "Painting", "image": ImageURLS.drawingImg, "isSelected": false},
  {"text": "Art", "image": ImageURLS.artsImg, "isSelected": false},
];

List<Map<String, dynamic>> publicPhotos = [
  {"isSelected": false, "xfile": null},
  {"isSelected": false, "xfile": null},
  {"isSelected": false, "xfile": null},
];

List<Map<String, dynamic>> privatePhotos = [
  {"isSelected": false, "xfile": null},
  {"isSelected": false, "xfile": null},
  {"isSelected": false, "xfile": null},
];
