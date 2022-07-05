import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[drawerBaslik(context), drawerMenu(context)],
        ),
      ),
    );
  }
}

Widget drawerBaslik(BuildContext context) => Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(
              top: 12 + MediaQuery.of(context).padding.top, bottom: 12),
          child: Column(
            children: const [
              CircleAvatar(
                radius: 48,
                backgroundImage:
                    const NetworkImage('https://picsum.photos/200'),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Ad Soyad',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );

Widget drawerMenu(BuildContext context) => Wrap(
      children: [
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Hesabım'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.notification_add),
          title: const Text('Yıldızlılar'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Ayarlarım'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.person_add),
          title: const Text("X'e Davet Et"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.web),
          title: const Text('X Web'),
          onTap: () {},
        ),
      ],
    );

// class DrawerWidget extends StatelessWidget {
//   const DrawerWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         color: Colors.grey,
//         child: ListView(
//           children: <Widget>[
//             const SizedBox(
//               height: 48,
//             ),
//             drawerMenuItem(text: 'Hesabım', icon: Icons.person),
//             const SizedBox(
//               height: 16,
//             ),
//             drawerMenuItem(text: 'Yıldızlılar', icon: Icons.notification_add),
//             const SizedBox(
//               height: 16,
//             ),
//             drawerMenuItem(text: 'Ayarlarım', icon: Icons.settings),
//             const SizedBox(
//               height: 16,
//             ),
//             drawerMenuItem(text: "X'e Davet Et", icon: Icons.person_add),
//             const SizedBox(
//               height: 16,
//             ),
//             drawerMenuItem(text: 'X Web', icon: Icons.web),
//           ],
//         ),
//       ),
//     );
//   }

//   drawerMenuItem({required String text, required IconData icon}) {
//     return ListTile(
//       leading: Icon(icon),
//       title: Text(text),
//       onTap: () {},
//     );
//   }
// }
