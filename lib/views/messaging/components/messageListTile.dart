import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/utils/styles.dart';
import 'package:flutter/material.dart';

class MessageListTile extends StatelessWidget {
  const MessageListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: primaryColor.withOpacity(0.05)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person_4_sharp,
                  color: primaryColor,
                  size: 20,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jeremy Renner',
                    style: mediumText(fontSize: 12),
                  ),
                  Text(
                    'Nice to connect with you...',
                    style: normalText(fontSize: 10)
                        .copyWith(color: textColor.withOpacity(0.7)),
                  )
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: primaryColor),
            child: Text(
              '2',
              style: normalText(fontSize: 10).copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
