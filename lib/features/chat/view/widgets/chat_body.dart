import 'package:chat_app/core/extensions/num_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/chat_bloc.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({super.key});

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ColoredBox(
        color: Colors.grey,
        child: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return state.when(
                loading: () => Center(child: CircularProgressIndicator()),
                success: (chat){
                  return ListView.separated(
                    padding: EdgeInsets.only(bottom: 10),
                    clipBehavior: Clip.none,
                    reverse: true,
                    itemBuilder: (context, index) {
                      final data = chat[index];
                      final isMe = data.name == "name";
                      return Row(
                        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                        children: [
                          if(!isMe)12.width,
                          if(!isMe)CircleAvatar(),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 300,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 12),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                                color: isMe ? Color(0xFFDCF7C5) : Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(12))
                            ),
                            child: Text(data.message),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => 4.height,
                    itemCount: chat.length,
                  );
                },
                failure: (failure) => Center(child: Text(failure)),
            );

          },
        ),
      ),
    );
  }
}
