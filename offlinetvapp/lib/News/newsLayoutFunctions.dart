import 'package:flutter/material.dart';
import '../data.dart';

ListView getTwitterContent(List<List<String>> twitterData, BuildContext context)
{
  ListView listView = new ListView (
    padding: new EdgeInsets.all(10.0),
    children: getTwitterChildren(twitterData, context),
  );

  print("Loaded Twitter ListView!");
  return listView;
}

List<Widget> getTwitterChildren(List<List<String>> twitterData, BuildContext context)
{
  List<Widget> tiles = new List<Widget>();

  for (int i = 0; i < twitterData.length; i++)
  {
    ListTile listTile = new ListTile (
      title: new Material (
        color: twitterColor,
        child: new Container (
          width: MediaQuery.of(context).size.width,
          child: new Row (
            children: <Widget>[
              new Image.asset("icons/twitterlogo.jpg", scale: 10.0,),
              new Text("Twitter", style: new TextStyle(fontFamily: "HelveticaNeueMed", fontSize: 18.0, color: Colors.white)),
            ],
          ),
        )
      ),
      subtitle: new Material(
        color: Colors.white,
        child: new Container (
          padding: new EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          child: new Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: formatTwitterChildren(twitterData, context, i),
          )
        ),
      )
    );
    tiles.add(listTile);
    tiles.add(new Divider(height: 30.0,));
  }
  return tiles;
}

List<Widget> formatTwitterChildren(List<List<String>> twitterData, BuildContext context, int index)
{
  List<Widget> widgets = new List<Widget>();
  String tweet = twitterData[index][1];
  String time = twitterData[index][0].substring(0, twitterData[index][0].indexOf("+"));
  // crossAxisAlignment: CrossAxisAlignment.end,

  widgets.add( new Container (
    alignment: Alignment.centerRight,
    child:  new Text(time, style: new TextStyle(fontFamily: "HelveticaNeueMed", fontSize: 10.0), overflow: TextOverflow.ellipsis, maxLines: 10, textAlign: TextAlign.right,),
  )
  );


  widgets.add(new Divider(height: 10.0, color: Colors.black12,));

  if(tweet.contains("https://"))
  {
      widgets.add(new Text(tweet.substring(0, tweet.indexOf("https://")), style: new TextStyle(fontFamily: "HelveticaNeueMed", fontSize: 14.0), overflow: TextOverflow.ellipsis, maxLines: 10, textAlign: TextAlign.left,));
  }
  else
  {
    widgets.add(new Text(tweet, style: new TextStyle(fontFamily: "HelveticaNeueMed", fontSize: 14.0), overflow: TextOverflow.ellipsis, maxLines: 10, textAlign: TextAlign.left,));
  }

  if(twitterData[index].length > 2)
  {
    widgets.add(new Divider(height: 5.0,));
    widgets.add(new Image.network(twitterData[index][2]));
  }

  return widgets;
}