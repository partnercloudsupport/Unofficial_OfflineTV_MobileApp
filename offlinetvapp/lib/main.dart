import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'data.dart';
import 'package:pseduoapp/News/twitterfunctions.dart';
import 'package:pseduoapp/News/redditfunctions.dart';
import 'package:pseduoapp/News/newsLayoutFunctions.dart';
import 'package:pseduoapp/Youtube/youtubefunctions.dart';
import 'package:pseduoapp/Youtube/youtubeLayoutFunctions.dart';
import 'package:pseduoapp/Twitch/twitchfunctions.dart';
import 'package:pseduoapp/Merch/merchLayoutFunctions.dart';

/*
    Gets the Prerequisite data from the TwitchAPI
    from the specified community. Conducts 2 HTTPS GET
    requests, once ot gather the community ID, Name,
    Avatar URL, and Banner URL, and another to get
    the active streamers of the community whom are
    currently online and streaming
   */
Future<List> getTwitchPrerequisites() async
{
  List items = new List();

  List<String> data = await getCommunityDataByName("offlinetv");
  List<String> streamers = await getIdsFromCommunityId(data[0].toString());

  items.add(data[0]);            // Community ID
  items.add(data[1]);            // Community Name
  items.add(data[2].toString()); // Community Avatar Image from URL
  items.add(data[3].toString()); // Community Banner Image from URL
  items.add((streamers.length/2).round().toString());

  /*
      Loops through the list of streamers string ids
      and copies their id's to items. Begins at location 5.
     */
  for(String s in streamers)
  {
    items.add(s);
  }

  return items;
}

/*

 */
Future<List> getYoutubePrerequisites() async
{
  List youtubeData = new List();

  for(int i = 0; i < youtubeUsers.length; i++)
  {
    print("Getting " + youtubeUsers[i].toString() + "'s YouTube Info...");
    var profilePicUrl = await getChannelInfo(youtubeUserToId[youtubeUsers[i]]);
    var videoData = await getChannelRecentVideos(youtubeUserToId[youtubeUsers[i]]);
    youtubeData.add(profilePicUrl);
    youtubeData.add(videoData);
    print("Got " + youtubeUsers[i].toString() + "'s YouTube Info!");
  }

  return youtubeData;
}

/*
  ADD COMMENT HERE
 */
void main() async
{
  //List<List<String>> redditData = await getRedditPrerequisites();
  List<List<String>> twitterData = await getTwitterPrerequisites();
  List twitchData = await getTwitchPrerequisites();
  List youtubeData = await getYoutubePrerequisites();
  runApp(new TwitchApp(twitchList: twitchData, youtubeList: youtubeData, twitterList: twitterData));
}

/*
  ADD COMMENT HERE
 */
class TwitchApp extends StatelessWidget {

  TwitchApp({List twitchList, List youtubeList, List<List<String>> twitterList, List<List<String>> redditList}) : twitchData = twitchList,
        youtubeData = youtubeList, twitterData = twitterList, redditData = redditList;

  final List twitchData;
  final List youtubeData;
  final List<List<String>> twitterData;
  final List<List<String>> redditData;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TwitchApp Demo',
      theme: new ThemeData(
        primaryColor: backgroundColor,
      ),
      home: new HomePage(title: 'TwitchApp Homepage', twitchList: twitchData, youtubeList: youtubeData, twitterList: twitterData, redditList: redditData,),
    );
  }
}

/*
  ADD COMMENT HERE
*/
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title, List twitchList, List youtubeList, List<List<String>> twitterList, List<List<String>> redditList}) : twitchData = twitchList,
        youtubeData = youtubeList, twitterData = twitterList, redditData = redditList,
        super(key: key);
  final String title;
  final List twitchData;
  final List youtubeData;
  final List<List<String>> twitterData;
  final List<List<String>> redditData;

  @override
  _HomePageState createState() => new _HomePageState(twitchList: twitchData, youtubeList: youtubeData, twitterList: twitterData, redditList: redditData,);
}

/*
  ADD COMMENT HERE
*/
class _HomePageState extends State<HomePage> {
  _HomePageState({List twitchList, List youtubeList, List<List<String>> twitterList, List<List<String>> redditList}) : twitchData = twitchList,
        youtubeData = youtubeList, twitterData = twitterList, redditData = redditList;
  final List twitchData;
  final List youtubeData;
  final List<List<String>> twitterData;
  final List<List<String>> redditData;

  @override
  Widget build(BuildContext context) {

    List<Widget> twitch_names = new List<Widget>();

    // Loop for TwitchData, add more comments here
    for(int i = int.parse(twitchData[4], radix: 16)+5; i < twitchData.length; i++)
    {
      String name = twitchData[i].toString();
    }

    return new MaterialApp (
      home: new DefaultTabController (
          length: 4,
          child: new Scaffold (
            appBar: new AppBar (
                backgroundColor: backgroundContrast,
                bottom: new PreferredSize (
                  preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/12),
                  child: new Column (
                    children: <Widget>[
                      new Image.network(twitchData[3].toString()),
                      new Material (
                        color: backgroundColor,
                        child: new TabBar (
                          labelColor: Colors.white,
                          tabs: [
                            new Tab(
                              child: new Text(
                                "News",
                                style: new TextStyle(fontFamily: 'HanSans', color: Colors.white),
                              ),
                            ),
                            new Tab(
                              child: new Image.asset("icons/youtube.png"),
                            ),
                            new Tab(
                              child: new Image.asset("icons/twitch.png"),
                            ),
                            new Tab(
                              child: new Text(
                                "Merch",
                                 style: new TextStyle(fontFamily: 'HanSans', color: Colors.white),
                              ),
                            ),
                          ]
                        ),
                      )
                    ],
                  ),
              )
            ),
            body: new Material (
              color: backgroundColor,
              child: new TabBarView (
                children: <Widget>[
                  getTwitterContent(twitterData, context),
                  new Container(
                    child: new Material(
                      child: getYoutubeContent(youtubeData, context),
                      color: youtubeColor,
                    ),
                  ),
                  new Container(
                    child: new Text(
                      "TWITCH",
                      style: new TextStyle(
                        fontFamily: 'HanSans',
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  new Container (
                    child: new Material(
                      color: Colors.white,
                      child: new ListView (
                        children: <Widget> [
                          new Image.asset("images/merch_banner2.png", fit: BoxFit.fitWidth,),
                          new Divider(
                            height: 10.0,
                            color: Colors.transparent,
                          ),
                          getMerchContent(context),
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

