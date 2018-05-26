import 'dart:async';
import 'dart:convert';
import 'dart:io';

// Primary Domain Name for the TwitchAPI functions
var domain = "api.twitch.tv";

/*
  Performs an asynchronous task that calls the Twitch.tv API
  and attempts a GET HTTPS Request to get a community's id
  parameter from its name parameter. Returns the community's
  id as a Future<String>
 */
Future<String> getCommunityIdByName(String name) async
{

}

/*
  Performs an asynchronous task that calls the Twitch.tv API
  and attempts a GET HTTPS Request to get a community's data
  parameters (consisting of its id, avatar_img_url, cover_img_url,
  and community_name from its name parameter. Returns the community's
  data as a Future<List<String>>
 */
Future<List<String>> getCommunityDataByName(String name) async
{

}

/*
  Performs an asynchronous task that calls the Twitch.tv API
  and attempts a GET HTTPS Request to get a community's online
  streamers parameter from the community's id parameter.
  Returns the community's online streamers as a Future<List<String>>
 */
Future<List<String>> getIdsFromCommunityId(String id) async
{

}