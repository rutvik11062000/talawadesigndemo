import 'package:flutter/material.dart';
import 'package:talawadesigndemo/Pages/NewsFeed/commentsPage.dart';

class PostWidget extends StatelessWidget {
  final bool showImage;
  const PostWidget({
    Key key,
    this.showImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "Rutvik Chandla",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
            ),
            trailing: IconButton(
                icon: Icon(Icons.more_vert_rounded), onPressed: () {}),
            subtitle: Text("2m",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "This will be the brief description about the event or the text which user want to display\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    )),
                showImage == false
                    ? Container(
                        color: Colors.teal[200],
                        height: 180,
                      )
                    : Text(
                        "Lorem ipsum this will hhte extra text or the text that you can add when you dont include the photo or the video of the user to show lets get started. This is something like featue of a twitter.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        icon: Icon(Icons.comment_outlined),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommentScreen())))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
