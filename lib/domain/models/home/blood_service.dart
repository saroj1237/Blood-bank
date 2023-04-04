class BloodService {
  final String imageUrl;
  final String label;

  BloodService({required this.imageUrl, required this.label});

  static List<BloodService> bloodServices = [
    BloodService(
        imageUrl: "assets/images/blood_stock.png", label: "Blood Stock"),
    BloodService(imageUrl: "assets/images/request.png", label: "Request Blood"),
    BloodService(imageUrl: "assets/images/donate.png", label: "Donate Blood"),
    BloodService(imageUrl: "assets/images/book_camp.png", label: "Book Camp"),
  ];
}
