import "package:blood_bank/core/routes/go_router.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class BloodService {
  final String imageUrl;
  final String label;
  final void Function(BuildContext context)? onPressed;

  BloodService({
    required this.imageUrl,
    required this.label,
    required this.onPressed,
  });

  static List<BloodService> bloodServices = [
    BloodService(
      imageUrl: "assets/images/blood_stock.png",
      label: "Blood Stock",
      onPressed: (context) {
        context.push(AppRoutes.bloodStockRoute);
      },
    ),
    BloodService(
      imageUrl: "assets/images/request.png",
      label: "Request Blood",
      onPressed: (context) {
        context.push(AppRoutes.bloodRequestRoute);
      },
    ),
    BloodService(
      imageUrl: "assets/images/donate.png",
      label: "Donate Blood",
      onPressed: (context) {
        context.push(AppRoutes.bloodDonateRoute);
      },
    ),
    BloodService(
      imageUrl: "assets/images/book_camp.png",
      label: "Book Camp",
      onPressed: (context) {
        print("hello sir");
      },
    ),
  ];
}
