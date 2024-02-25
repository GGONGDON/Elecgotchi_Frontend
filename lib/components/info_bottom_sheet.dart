import 'package:flutter/material.dart';

void InfoBottomSheet(BuildContext context, List<String> messages, String buttonText) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ...messages.map((message) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(message,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )).toList(),
          ],
        ),
      );
    },
  );
}
