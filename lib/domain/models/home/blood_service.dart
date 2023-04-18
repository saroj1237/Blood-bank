import "package:blood_bank/core/resources/asset_manager.dart";
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
        context.push(AppRoutes.bookCampRoute);
      },
    ),
  ];
  static List<BloodService> otherServices = [
    BloodService(
      imageUrl: "assets/images/ambulance.png",
      label: "Ambulance",
      onPressed: (context) {
        context.pushNamed(
          AppRoutes.aphRoute,
          params: {"tabIndex": "0"},
        );
      },
    ),
    BloodService(
      imageUrl: "assets/images/blood_bank.png",
      label: "Blood Bank",
      onPressed: (context) {
        context.push(AppRoutes.bloodBankRoute);
      },
    ),
    BloodService(
      imageUrl: "assets/images/hospital.png",
      label: "Hospital",
      onPressed: (context) {
        context.pushNamed(
          AppRoutes.aphRoute,
          params: {"tabIndex": "1"},
        );
      },
    ),
    BloodService(
      imageUrl: "assets/images/pharmacy.png",
      label: "Pharmacy",
      onPressed: (context) {
        context.pushNamed(
          AppRoutes.aphRoute,
          params: {"tabIndex": "2"},
        );
      },
    ),
    BloodService(
      imageUrl: AssetManager.bloodCamp,
      label: "Blood Camp",
      onPressed: (context) {
        context.push(AppRoutes.bloodCampRoute);
      },
    ),
  ];
}
