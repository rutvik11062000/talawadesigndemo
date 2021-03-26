import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/NewsFeed/commentsPage.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            "User 1",
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.black,
          ),
          trailing:
              IconButton(icon: Icon(Icons.more_vert_rounded), onPressed: () {}),
        ),
        Container(
          color: Colors.teal[200],
          height: MediaQuery.of(context).size.width,
        ),
        ListTile(
          leading: Container(
            width: 150,
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 32,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.messenger_outline,
                      size: 32,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          title: Text(""),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                  text: 'User 1',
                  style: TextStyle(fontWeight: FontWeight.w600),
                  children: <InlineSpan>[
                    TextSpan(
                      text: '  There will be the caption here',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )
                  ])),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CommentScreen()));
                },
                child: Text(
                  "view all 89 comments",
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
              Text.rich(TextSpan(
                  text: 'User 89',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
                  children: <InlineSpan>[
                    TextSpan(
                      text: '  The users comment',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )
                  ])),
            ],
          ),
        )
      ],
    );
  }
}
