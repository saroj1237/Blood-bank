import 'package:blood_bank/core/resources/resources.dart';
import 'package:flutter/material.dart';

void showInfoDialog(BuildContext context,
    {String title = "Title",
    String body = 'body',
    void Function()? onPressed}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    pageBuilder: (ctx, a1, a2) {
      return const SizedBox.shrink();
    },
    transitionBuilder: (ctx, a1, a2, child) {
      var curve = Curves.easeInOut.transform(a1.value);
      return Transform.scale(
        scale: curve,
        child: _buildScaleDialog(ctx, title, body),
      );
    },
    transitionDuration: const Duration(milliseconds: 100),
  );
}

Widget _buildScaleDialog(BuildContext context, String title, String body,
    {void Function()? onPressed}) {
  return AlertDialog(
    content: Text(body),
    actions: <Widget>[
      TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: onPressed ??
            () {
              Navigator.of(context).pop();
            },
        child: const Text("OK"),
      )
    ],
  );
}
