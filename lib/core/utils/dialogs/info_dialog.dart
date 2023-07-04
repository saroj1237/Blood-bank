import 'package:blood_bank/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

enum DialogType {
  none,
  success,
  failure,
  warning,
  info,
}

void showInfoDialog(BuildContext context,
    {DialogType dialogType = DialogType.none,
    String title = "Title",
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
        child: _buildScaleDialog(ctx, title, body, dialogType),
      );
    },
    transitionDuration: const Duration(milliseconds: 0),
  );
}

Widget _buildScaleDialog(
    BuildContext context, String title, String body, DialogType dialogType,
    {void Function()? onPressed}) {
  return AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (dialogType != DialogType.none) ...[
          Lottie.asset(
              dialogType == DialogType.success
                  ? AssetManager.success
                  : dialogType == DialogType.failure
                      ? AssetManager.failure
                      : AssetManager.info,
              repeat: false,
              height: 50,
              width: 50),
          const SizedBox(height: 10)
        ],
        Text(body),
      ],
    ),
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
