
import 'package:blood_bank/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void showLoadingDialog(BuildContext context, {String message = 'Loading...'}) {
  SchedulerBinding.instance
      .addPostFrameCallback((_) => _buildLoadingDialog(context, message));
}

_buildLoadingDialog(BuildContext context, String message) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      message,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      });
}

void hideLoadingDialog(BuildContext context, {String message = 'Loading...'}) {
  Navigator.of(context).pop();
}
