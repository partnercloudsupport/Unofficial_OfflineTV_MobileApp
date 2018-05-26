import 'package:flutter/material.dart';
import '../data.dart';

GridView getMerchContent(BuildContext context)
{
  return new GridView.count (
    primary: false,
    shrinkWrap: true,
    padding: const EdgeInsets.all(20.0),
    crossAxisSpacing: 20.0,
    mainAxisSpacing: 10.0,
    crossAxisCount: 2,
    children: getMerchChildren(context),
  );
}

Widget getAlertInfo(String itemName, String itemPrice)
{

  List<Widget> itemTypes = new List<Widget>();
  String itemId = merchNametoId[itemName];

  for(int i = 1; i < int.parse(merchNametoVersions[itemName]); i++)
  {
      itemTypes.add(new Image.asset("images/" + itemId + "-" + i.toString() + ".jpg", scale: .2,));
  }

  TextStyle textStyleLarge = new TextStyle(
    fontFamily: 'RobotoBold',
    color: Colors.black,
    fontSize: 20.0,
  );

  TextStyle textStyleMedium = new TextStyle(
    fontFamily: 'RobotoBold',
    color: Colors.black,
    fontSize: 15.0,
  );

  TextStyle textStyleSmall = new TextStyle(
    fontFamily: 'Roboto',
    color: Colors.black,
    fontSize: 12.0,
  );

  Container c = new Container(
    child: FittedBox(
      fit: BoxFit.contain,
      child: new Row (
        children: <Widget>[
          new Container(
            child: new Column (
              children: <Widget>[
                new Image.asset("images/" + itemId + "-1.jpg")
              ],
            ),
          ),
          new Container (
            child: new FittedBox(
              fit: BoxFit.contain,
              child: new Column (
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Column(
                        children: <Widget>[
                          new Text(itemName, style: textStyleLarge, textScaleFactor: 3.0),
                          new Text("By: OfflineTV Official Merch", style: textStyleMedium, textScaleFactor: 4.0),
                        ],
                      )
                    ],
                  ),
                  new Divider(
                    height: 100.0,
                  ),
                  new FittedBox(
                    fit: BoxFit.fill,
                    child: new Column (
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Column (
                              children: <Widget>[
                                new Material (
                                  child: new Column(
                                    children: <Widget>[
                                      new Text("Product: " + merchNametoDesc[itemName] + ": " + itemPrice, style: textStyleMedium, textScaleFactor: 4.0),
                                      new Text("Colors: ", style: textStyleMedium, textScaleFactor: 4.0),
                                    ],
                                  ),
                                  color: Colors.black12,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Row (
                    //children: itemTypes,
                  )
                ],
              ),
            ),
          )
        ],
      )
    ),
  );

  return c;
}

List<Widget> getMerchChildren(BuildContext context)
{
  List<Widget> children = new List<Widget>();
  int i = 560;

  for(String s in merchIdAndPrice.keys)
  {
    GridTile c = new GridTile (
      child: new GestureDetector (
        onTap: () => showDialog(
          context: context,
          builder: (BuildContext context) {
            return new AlertDialog (
              content: getAlertInfo(s, merchIdAndPrice[s]),
            );
          },
        ),
        child: new FittedBox (
            fit: BoxFit.contain,
            child: new Material (
              color: Colors.white,
              child: new Column (
                children: <Widget>[
                  new Text(
                    s,
                    textScaleFactor: 3.0,
                    style: new TextStyle(
                      fontFamily: 'RobotoBold',
                      color: Colors.black,
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  new Image.asset(
                    "images/" + i.toString() + "-1.jpg",
                  ),
                  new Text(
                    merchIdAndPrice[s],
                    textScaleFactor: 3.0,
                    style: new TextStyle(
                      fontFamily: 'RobotoBold',
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
        ),
      )
    );
    i++;
    children.add(c);
  }
  return children;
}