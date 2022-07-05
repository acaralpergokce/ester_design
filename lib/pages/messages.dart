import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ester_design/widgets/appbar_widget.dart';
import 'package:ester_design/widgets/drawer_widget.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerWidget(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBarWidget(),
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: TextField(
                controller: null,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mic),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text('Tümü')),
              TextButton(onPressed: () {}, child: Text('Mesajlarım')),
              TextButton(onPressed: () {}, child: Text('Diğer Mesajlar'))
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            const NetworkImage('https://picsum.photos/201'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Gönderen Bilgisi 2',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text('09:55',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Bu mesajları kim atıyor anlayamadım.',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            const NetworkImage('https://picsum.photos/202'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Gönderen Bilgisi 3',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text('10:55',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Bu da başka bir mesaj',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            const NetworkImage('https://picsum.photos/204'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Gönderen Bilgisi 4',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text('10:55',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Bu da en alttaki mesaj olacak bakalım.',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            const NetworkImage('https://picsum.photos/205'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.65,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Gönderen Bilgisi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text('05:55',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black))
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Bu mesajlar bitmiyor heralde.',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  overflow: TextOverflow.ellipsis),
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// TODO: ListView Builder ile mesajlar_model.dart dosyası oluşturulup oradan
// TODO: veri alınacak.