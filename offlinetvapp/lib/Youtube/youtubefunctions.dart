import 'dart:async';
import 'dart:convert';
import 'dart:io';

// Primary Domain Name for the YoutubeAPI functions
var domain = "www.googleapis.com";

/*
  Accesses the YoutubeAPI and gets a user's 3 most recent videos. Returns
  an matrix whose rows are each video, which contain the video's name,
  its description, and its thumbnail.
 */
Future<List<List<String>>> getChannelRecentVideos(String channelId) async
{

}

/*
  Accesses the YoutubeAPI and gets a user's profile picture url. Returns
  an string containing a high-resolution profile picture.
 */
Future<String> getChannelInfo(String channelId) async
{

}
