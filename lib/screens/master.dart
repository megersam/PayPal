import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paypal/screens/dashboard/dashboard.dart';
import 'package:paypal/screens/request/request.dart';
import 'package:paypal/screens/send/send.dart';
import 'package:paypal/screens/settings/settings.dart';
import 'package:paypal/shared/bottom_nav_items.dart';

class Master extends StatefulWidget {
  const Master({Key? key}) : super(key: key);

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {


  List<bool> bottonNavButtonItemStatus = [true, false, false, false];

  late Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      currentWidgetView = Dashboard();
    });
  }

  setCurrentWidgetView(int index){
    setState(() {
      switch (index){
        case 0: currentWidgetView = Dashboard(); break;
        case 1: currentWidgetView = Send(); break;
        case 2: currentWidgetView = Request(); break;
        case 3: currentWidgetView = Settings(); break;
      }
      bottonNavButtonItemStatus = [index == 0, index == 1, index == 2, index == 3];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: currentWidgetView,
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 80,
          color: Colors.white,
          child: Column(
            children: [

              Container(
                height: 2,
                color: Colors.grey[300],
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    BottomNavigationItem(
                      imageUrl: "assets/icons/tile.png",
                      text: "Dashboard",
                      selected: bottonNavButtonItemStatus[0],
                      onPress: () {
                        setCurrentWidgetView(0);
                      },
                    ),

                    BottomNavigationItem(
                      imageUrl: "assets/icons/send_money.png",
                      text: "Send",
                      selected: bottonNavButtonItemStatus[1],
                      onPress: () {
                        setCurrentWidgetView(1);
                      },
                    ),

                    BottomNavigationItem(
                      imageUrl: "assets/icons/request_money.png",
                      text: "Request",
                      selected: bottonNavButtonItemStatus[2],
                      onPress: () {
                        setCurrentWidgetView(2);
                      },
                    ),

                    BottomNavigationItem(
                      imageUrl: "assets/icons/settings.png",
                      text: "Settings",
                      selected: bottonNavButtonItemStatus[3],
                      onPress: () {
                        setCurrentWidgetView(3);
                      },
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
