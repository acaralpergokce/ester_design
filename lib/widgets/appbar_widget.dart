import 'package:ester_design/main.dart';
import 'package:ester_design/pages/explore.dart';
import 'package:ester_design/pages/messages.dart';
import 'package:ester_design/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      actions: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: Icon(Icons.person),
          color: Colors.black,
        )
      ],
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.apps_outlined),
        onPressed: () {},
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Column(
        children: [
          Image.asset('assets/images/logo.jpg'),
          SizedBox(
            height: 16,
          ),
          TextButton.icon(
            // <-- TextButton
            onPressed: () {},
            icon: Icon(
              Icons.location_pin,
              size: 16.0,
            ),
            label: Text('Mevcut Konum'),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
