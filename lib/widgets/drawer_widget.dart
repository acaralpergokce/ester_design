import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey,
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 48,
            ),
            drawerMenuItem(text: 'Hesabım', icon: Icons.person)
          ],
        ),
      ),
    );
  }

  drawerMenuItem({required String text, required IconData icon}) {}
}
