import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int chapter = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView.builder(
          itemBuilder: (context, index) => StickyHeader(
                header: Container(
                  height: 50.0,
                  color: Colors.blueGrey[700],
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: Text(
                    '${chapter + 1}.${index + 1}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                content: Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
              )),
      Container(
        child: DrawerController(
            edgeDragWidth: MediaQuery.of(context).size.width,
            alignment: DrawerAlignment.end,
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              child: Drawer(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        '創世紀',
                      )),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          for (int i = 0; i < 20; i++)
                            ListTile(
                              title: Center(child: Text('第${i+1}章')),
                              onTap: () {
                                // Update the state of the app
                                setState(() {
                                  chapter = i;
                                });
                                // Then close the drawer
                                Navigator.pop(context);
                              },
                            ),
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            size: 20,
                          ),
                          Text('Bookmark')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            size: 20,
                          ),
                          Text('Bookmark')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            size: 20,
                          ),
                          Text('Bookmark')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    ]);
  }
}
