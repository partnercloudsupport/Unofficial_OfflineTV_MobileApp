import 'dart:async';
import 'encoders.dart';
import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:crypto/crypto.dart';

String domain = "api.twitter.com";

/*
  Accesses the TwitterAPI, creates special oauth token using HMAC-SHA1,
  gathers data via GET request such as:
    User's timeline post
    User's post time/date
    Any Media attached to the post
   and returns this information in matrix, where the rows are the posts, and the
   column elements are the data items.
 */
Future getTwitterPrerequisites() async
{

}