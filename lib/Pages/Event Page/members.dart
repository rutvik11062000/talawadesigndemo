import 'package:flutter/material.dart';

class Attendees extends StatelessWidget {
  const Attendees({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.person_add),
          onPressed: () {},
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Volunteers",
                  style: TextStyle(fontSize: 18.0, color: Colors.deepPurple)),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    trailing: Icon(Icons.shield),
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                    ),
                    tileColor: Colors.white,
                    title: Text("Volunteer " + (index + 1).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0)),
                  );
                },
              ),
            ),
            Divider(),
            Text("Attendees",
                style: TextStyle(fontSize: 18.0, color: Colors.teal)),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    trailing: Icon(Icons.card_membership_outlined),
                    leading: CircleAvatar(),
                    tileColor: Colors.white,
                    title: Text("Atendees " + (index + 1).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0)),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
