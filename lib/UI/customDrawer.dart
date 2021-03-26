import 'package:flutter/material.dart';

Container CustomDrawer(BuildContext context) {
  return Container(
    width: 80,
    child: Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 28.0,
            ),
          ),
          Divider(
            thickness: 3,
            color: Colors.blueGrey,
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 8.0,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return CircleAvatar(
                    radius: 28.0,
                    backgroundColor: Colors.green[300],
                  );
                },
              ),
            ),
          ),
          Divider(
            endIndent: 0,
            thickness: 3,
            color: Colors.blueGrey,
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      // color: Theme.of(context).primaryColor,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            color: Theme.of(context).primaryColor,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15.0),
                            height: 100,
                            child: Container(
                              child: Center(
                                child: ListTile(
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                  title: Text("Create a community",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(
                                      "Make a server and join the people who belongs there.",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15.0),
                            height: 100,
                            child: Container(
                              child: Center(
                                child: ListTile(
                                  trailing: Icon(
                                    Icons.arrow_forward,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  title: Text("Join a community",
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(
                                      "Join with the like minded people around you.",
                                      style: TextStyle(
                                          color:
                                              Theme.of(context).primaryColor)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: CircleAvatar(
                radius: 28.0,
                child: Center(child: Icon(Icons.add)),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
