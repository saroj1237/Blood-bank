import 'package:flutter/material.dart';

void showConfirmDialog(BuildContext context,
    {String title = "Title",
    String body = 'body',
    void Function()? onConfirm}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (ctx) {
      return _buildScaleDialog(context, title, body, onConfirm: onConfirm);
    },
  );
}

Widget _buildScaleDialog(BuildContext context, String title, String body,
    {void Function()? onConfirm}) {
  return AlertDialog(
    content: Text(body),
    actions: <Widget>[
      TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text("NO"),
      ),
      TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: onConfirm,
        child: const Text("YES"),
      )
    ],
  );
}
