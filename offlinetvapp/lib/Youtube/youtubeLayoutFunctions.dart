import 'package:flutter/material.dart';
import '../data.dart';
/*
  Returns a ListView that calls other functions to gather
  ExpansionTile containing youtube information. Corresponds to
  the YouTube tab inside of the TabView
 */
ListView getYoutubeContent(List youtubeData, BuildContext context)
{
  List<Widget> children = new List<Widget>();
  children.add(new Image.asset("images/youtube_banner.png"));
  children.add(
    new Divider(
      height: 10.0,
      color: Colors.transparent,
    )
  );
  for(int i = 0; i < youtubeUsers.length; i++)
  {
    children.add(getYoutubeChildren(youtubeData, i, context));
    children.add(new Divider(height: 10.0, color: Colors.transparent,));
  }

  ListView listView = new ListView (
    padding: new EdgeInsets.all(10.0),
    children: children,
  );

  print("Loaded Youtube ListView!");
  return listView;
}

/*
  Returns an ExpansionTile that contains:
    - A user's profile picture with their name as the parent
    - A user's video's with their respective titles, descriptions, and thumbnails
 */
Material getYoutubeChildren(List youtubeData, int index, BuildContext context)
{
  Material expansionTile;
  List<Widget> children = getYoutubeUserChild(youtubeData[(2*index)+1], index, context);

  expansionTile = new Material(
    color: youtubeContrast,
    child: new ExpansionTile (
      title: new Container (
        height: MediaQuery.of(context).size.height/9,
        child: new Row (
          children: <Widget>[
            new Container (
              child: new CircleAvatar (
                radius: MediaQuery.of(context).size.width/20,
                backgroundImage: new NetworkImage(youtubeData[2*index]),
              ),
            ),
            new Container(
              padding: new EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
              child: new Text(youtubeUsers[index], style: new TextStyle(fontFamily: 'RobotoBold', color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center),
            )
          ],
        ),
      ),
      children: <Widget>[
        new Divider(
          height: 1.0,
        ),
        new Material(
            color: youtubeContrast2,
            child: new Container(
              child: new Column (
                children: children,
              ),
            )
        )
      ],
    ),
  );
  return expansionTile;
}

/*
  Returns a user's video's with their respective titles, descriptions, and thumbnails
 */
List<Widget> getYoutubeUserChild(List youtubeUserData, int index, BuildContext context)
{
  List<Widget> children = new List<Widget>();
  children.add(new Container(
    padding: new EdgeInsets.all(10.0),
    child: new Text(
        "RECENT VIDEOS",
        style: new TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 20.0),
        textAlign: TextAlign.start
    ),
  ));

  // Len should ALWAYS be 3
  for(int i = 0; i < youtubeUserData.length; i++)
  {
    var videoThumbnail = new Image.network(youtubeUserData[i][2].toString());

    Container container = new Container (
      constraints: new BoxConstraints (
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: new Container (
        padding: new EdgeInsets.all(5.0),
        child: new Row (
          children: <Widget> [
            new Column(
              children: <Widget>[
                videoThumbnail,
                new Image.asset("icons/youtube_watch.png")
              ],
            ),
            new Container(
              constraints: new BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width/1.75,
              ),
              alignment: Alignment.centerLeft,
              padding: new EdgeInsets.all(20.0),
              child: new Column (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    youtubeUserData[i][0].toString(),
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 17.0),
                  ),
                  new Divider (
                    height: 5.0,
                    color: Colors.transparent,
                  ),
                  new Text(
                    youtubeUserData[i][4].toString().substring(0, youtubeUserData[i][4].toString().indexOf("T")),
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 11.0),
                  ),
                  new Divider(
                    height: MediaQuery.of(context).size.height/31,
                    color: Colors.white,
                  ),
                  new Text (
                    youtubeUserData[i][1].toString(),
                    overflow: TextOverflow.clip,
                    style: new TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 12.0),
                    maxLines: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    children.add(container);
  }

  return children;
}

