import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            "テスト",
          ),
          actions: <Widget>[
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
                        "https://yt3.ggpht.com/a/AATXAJx2LQwh1kNX09biNyCenCNGzh5Rvwoue-an_Q=s288-c-k-c0xffffffff-no-rj-mo",
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
                      leading: Image.network(
                        "https://yt3.ggpht.com/a/AATXAJx2LQwh1kNX09biNyCenCNGzh5Rvwoue-an_Q=s288-c-k-c0xffffffff-no-rj-mo",
                      ),
                      title: Text('テストYoutubeApp'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
