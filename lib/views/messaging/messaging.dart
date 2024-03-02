import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:crezam_task/views/messaging/components/messageListTile.dart';
import 'package:flutter/material.dart';

class Messaging extends StatefulWidget {
  const Messaging({super.key});

  @override
  State<Messaging> createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Messages',
                style: heading2,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: searchBar,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: normalText(fontSize: 14),
                              onChanged: (value) {},
                              onTapOutside: (event) =>
                                  FocusScope.of(context).unfocus(),
                              decoration: searchBarInput,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              
              MessageListTile()
            ],
          ),
        ),
      ),
    );
  }
}
