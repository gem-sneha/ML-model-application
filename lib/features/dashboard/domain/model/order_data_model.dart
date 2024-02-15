class OrderData {
  late String itemName;
  late String dateOfmanufacure;
  late int numberOfPouches;
  late double price;
  late String modeOfPayment;
  late String imageUrl;

  OrderData(
      {required this.itemName,
      required this.dateOfmanufacure,
      required this.numberOfPouches,
      required this.price,
      required this.modeOfPayment,
      required this.imageUrl});
}
