import 'package:flutter/material.dart';

class TaksScreen extends StatelessWidget {
  const TaksScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tasks",
            style: TextStyle(letterSpacing: 1.2),
          ),
          actions: [Icon(Icons.settings), Icon(Icons.more_vert_rounded)],
          elevation: 0.0,
        ),
        backgroundColor: Colors.deepPurple,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: 6,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 3,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    trailing: Icon(Icons.star_border_outlined),
                    leading: CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 14.0,
                      ),
                    ),
                    tileColor: Colors.white,
                    title: Text("Task " + (index + 1).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0)),
                    subtitle:
                        Text("Task subtitle", style: TextStyle(fontSize: 12.0)),
                  );

                  ;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.download_sharp,
                      color: Colors.white,
                    ),
                    Text("Complete",
                        style: TextStyle(fontSize: 14.0, color: Colors.white))
                  ],
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 3,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Colors.deepPurple,
                      child: Icon(
                        Icons.check_circle,
                        size: 30,
                      ),
                    ),
                    tileColor: Colors.white,
                    title: Text("Task " + (index + 1).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0)),
                    subtitle:
                        Text("Task subtitle", style: TextStyle(fontSize: 12.0)),
                  );

                  ;
                },
              ),
            ],
          ),
        ));
  }
}
