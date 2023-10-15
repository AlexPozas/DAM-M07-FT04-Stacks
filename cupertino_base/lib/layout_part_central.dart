import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_data.dart';
import 'widget_popover.dart';

class LayoutPartCentral extends StatefulWidget {
  const LayoutPartCentral({super.key});

  @override
  LayoutPartCentralState createState() => LayoutPartCentralState();
}

class LayoutPartCentralState extends State<LayoutPartCentral> {
  GlobalKey _settingsButtonKey = GlobalKey();
  String colo = "0";
  @override
  Widget build(BuildContext context) {
    AppData appData = Provider.of<AppData>(context);

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: appData.toggleSidebarLeft,
                  child: Icon(
                    CupertinoIcons.sidebar_left,
                    color: appData.isSidebarLeftVisible
                        ? CupertinoColors.activeBlue
                        : CupertinoColors.black,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )),
              const SizedBox(width: 16),
            ],
          ),
          middle: CupertinoButton(
            key: _settingsButtonKey,
            padding: const EdgeInsets.all(0.0),
            onPressed: () {
              WidgetPopover.showPopover(
                  context: context,
                  key: _settingsButtonKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            colo = "Negre";
                            print("Opció 1 premuda");

                            WidgetPopover.hidePopover();
                          },
                          child: Text('Negre'),
                        ),
                        GestureDetector(
                          onTap: () {
                            colo = "Vermell";
                            print("Opció 2 premuda");
                            WidgetPopover.hidePopover();
                          },
                          child: Text('Vermell'),
                        ),
                        GestureDetector(
                          onTap: () {
                            colo = "Verd";

                            print("Opció 1 premuda");
                            WidgetPopover.hidePopover();
                          },
                          child: Text('Verd'),
                        ),
                        GestureDetector(
                          onTap: () {
                            colo = "Blau";
                            print("Opció 1 premuda");
                            WidgetPopover.hidePopover();
                          },
                          child: Text('Blau'),
                        ),
                      ],
                    ),
                  ));
            },
            child: const Icon(
              CupertinoIcons.settings,
              color: CupertinoColors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                  padding: const EdgeInsets.all(0.0),
                  onPressed: appData.toggleSidebarRight,
                  child: Icon(
                    CupertinoIcons.sidebar_right,
                    color: appData.isSidebarRightVisible
                        ? CupertinoColors.activeBlue
                        : CupertinoColors.black,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  )),
              const SizedBox(width: 16),
            ],
          ),
        ),
        child: color(colo));
  }
}

Widget color(String n) {
  if (n == "Negre") {
    return const Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Central", style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
  if (n == "Vermell") {
    return const Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Central", style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
  if (n == "Verd") {
    return const Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Central", style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
  if (n == "Blau") {
    return const Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Central", style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  } else {
    return const Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Central", style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }
}
