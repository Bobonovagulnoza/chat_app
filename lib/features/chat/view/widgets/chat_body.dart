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
              loading: () => const Center(child: CircularProgressIndicator()),
              success: (chat) {
                return ListView.separated(
                  padding: const EdgeInsets.only(bottom: 10),
                  clipBehavior: Clip.none,
                  reverse: true,
                  itemBuilder: (context, index) {
                    final data = chat[index];
                    final isMe = data.name == "name";

                    return Row(
                      mainAxisAlignment:
                      isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!isMe) 12.width,
                        if (!isMe) const CircleAvatar(),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: isMe ? const Color(0xFFDCF7C5) : Colors.white,
                            borderRadius: const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data.message),
                              if (isMe)
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: IconButton(
                                    icon: const Icon(Icons.delete, size: 18, color: Colors.red),
                                    padding: EdgeInsets.zero,
                                    constraints: const BoxConstraints(),
                                    onPressed: () {
                                      context.read<ChatBloc>().add(
                                        ChatEvent.deleteMessage(data),
                                      );
                                    },
                                  ),
                                ),
                            ],
                          ),
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
