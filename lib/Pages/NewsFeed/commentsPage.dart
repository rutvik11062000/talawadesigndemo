import 'package:flutter/material.dart';
import 'package:talawadesigndemo/UI/wrapperUI.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return WrapperScaffold(
      Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            title: Text(
              'Comments',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
          ),
          backgroundColor: Colors.white,
          body: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowGlow();
            },
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: ListTile(
                    leading: CircleAvatar(),
                    title: Text.rich(TextSpan(
                        text: 'User 1',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12.0),
                        children: <InlineSpan>[
                          TextSpan(
                            text: '  There will be the caption here',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12.0),
                          )
                        ])),
                    subtitle: Text(
                      "47 m",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Divider(),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.green[300],
                        ),
                        title: Text.rich(TextSpan(
                            text: 'User ${index + 2}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12.0),
                            children: <InlineSpan>[
                              TextSpan(
                                text: '  There will be the comment here',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0),
                              )
                            ])),
                        subtitle: Text(
                          "47 m",
                          style: TextStyle(fontSize: 10),
                        ),
                      );
                    },
                    childCount: 10, // 1000 list items
                  ),
                ),
              ],
            ),
          ),
          bottomSheet: Container(
            height: 60.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey[100]),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.05),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    // height: 40.0,
                    child: TextField(
                      onEditingComplete: () {},
                      controller: _controller,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (msg) {
                        // addMessage('USER1', _controller.text);
                        // controller.clear();
                        _controller.text = "";
                      },
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Write a comment .. ",
                        contentPadding: EdgeInsets.all(15.0),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.blueGrey),
                        focusColor: Colors.black,
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Send",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ))
              ],
            ),
          )),
    );
  }
}
