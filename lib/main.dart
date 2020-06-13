import 'package:flutter/material.dart';
import 'package:flutteryoutubeapp/video_detail.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Image.network(
              "https://lab.topica-works.com/wp-content/uploads/2018/02/youtube_social_squircle_white.png"),
          title: const Text(
            "YouTube",
          ),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.cast),
                onPressed: () {
                  // TODO
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.videocam),
                onPressed: () {
                  // TODO
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  // TODO
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  // TODO
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        "http://www.pref.nara.jp/secure/125341/piisu_thumb.png",
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text("テスト"),
                        FlatButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text("登録する"),
                              Text("   "),
                              Text("チャンネル登録者数 9999人"),
                            ],
                          ),
                          onPressed: () {
                            // TODO
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8.0),
                      leading: Image.network(
                        "https://i.ytimg.com/vi/PUc1lrZxDyo/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&amp;rs=AOn4CLDchV435fJlEW1AedN_Q64-wwcQ6g",
                      ),
                      title: Column(
                        children: <Widget>[
                          Text(
                            'テストYoutubeApp',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '200回再生',
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                '4日前',
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('ホーム'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('探索'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.desktop_mac),
              title: Text('ライブラリ'),
            ),
          ],
          selectedItemColor: Colors.red,
        ),
      ),
    );
  }
}
