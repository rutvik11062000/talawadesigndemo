import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChatPage extends StatelessWidget {
  final String title;
  final bool leading;
  const ChatPage({Key key, this.title, this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    ScrollController _scrollController = new ScrollController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 700,
          width: 350,
          child: Scaffold(
              appBar: AppBar(
                leadingWidth: 50.0,
                title: Row(
                  // contentPadding: EdgeInsets.all(0),
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0),
                    ),
                  ],
                ),
                elevation: 0.0,
              ),
              body: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                  overscroll.disallowGlow();
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 60.0),
                  child: ListView.separated(
                    reverse: true,
                    controller: _scrollController,
                    physics: BouncingScrollPhysics(),
                    itemCount: 20,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 3.0,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return ChatMessage(
                        index: index,
                        title: title,
                      );
                    },
                  ),
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
                    IconButton(
                        icon: Icon(Icons.emoji_emotions_outlined),
                        onPressed: () {}),
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
                            hintText: "Type a message .. ",
                            contentPadding: EdgeInsets.all(15.0),
                            focusColor: Colors.black,
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                    // TextButton(
                    //     onPressed: () {},
                    //     child: Text(
                    //       "Send",
                    //       style:
                    //           TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                    //     ))
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        // backgroundColor: Colors.green,
                        child:
                            IconButton(icon: Icon(Icons.mic), onPressed: () {}),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final int index;
  final String title;
  const ChatMessage({Key key, this.index, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
    //   child: Container(
    //     decoration: BoxDecoration(
    //       color: index % 2 == 1 ? Colors.greenAccent[100] : Colors.white,
    //       borderRadius: BorderRadius.only(
    //           topLeft:
    //               index % 2 == 0 ? Radius.circular(0.0) : Radius.circular(15.0),
    //           topRight: Radius.circular(15.0),
    //           bottomLeft: Radius.circular(15.0),
    //           bottomRight:
    //               index % 2 == 1 ? Radius.circular(0.0) : Radius.circular(0.0)),
    //     ),
    //     padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    //     child: Column(
    //       crossAxisAlignment: index % 2 == 0
    //           ? CrossAxisAlignment.start
    //           : CrossAxisAlignment.end,
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Text(
    //           index % 2 == 0 ? title : "User 1",
    //           style: TextStyle(
    //               fontWeight: FontWeight.bold,
    //               fontSize: 12,
    //               color: index % 2 == 0
    //                   ? Theme.of(context).primaryColor
    //                   : Colors.green),
    //         ),
    //         Text(
    //           index % 2 == 0
    //               ? "This will be the text that user will write :)"
    //               : "This will be the long message that a reply person would reply but it doest make any sense",
    //           style: TextStyle(fontSize: 12),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    //
    return Row(
      mainAxisAlignment:
          index % 2 == 1 ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        index % 2 == 1
            ? Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.transparent.withOpacity(0.05),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Text("This is my first message"),
              )
            : Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.15),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Column(
                    children: [
                      Text("This is would be my long reply message"),
                    ],
                  ),
                ),
              ),
      ],
    );
  }
}
