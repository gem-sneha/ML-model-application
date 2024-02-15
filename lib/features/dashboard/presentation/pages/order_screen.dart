import 'package:dairyapp/features/dashboard/domain/model/order_data_model.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<OrderScreen> {
  List<OrderData> orderData = [
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
    OrderData(
        itemName: "100L Milk Pouch",
        dateOfmanufacure: "10 June, 2023",
        numberOfPouches: 12,
        price: 56.64,
        modeOfPayment: "Cash",
        imageUrl: "Milk.svg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 232, 232, 1),
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.blue,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Buy",
            style:
                TextStyle(color: Colors.white, fontSize: 25, fontFamily: '')),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(14.0),
              height: 100,
              child: Row(
                children: [
                  Expanded(
                      child: SizedBox(
                          height: 70,
                          child: Container(
                            decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.white),
                            padding: const EdgeInsets.all(10.0),
                            child: const Center(
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("Ordered Items",
                                          overflow: TextOverflow.ellipsis),
                                      Text("434")
                                    ],
                                  ),
                                  Expanded(
                                      child: VerticalDivider(
                                          color: Colors.grey, thickness: 2.0)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("Total Expenses",
                                          overflow: TextOverflow.ellipsis),
                                      Row(
                                        children: [
                                          Icon(Icons.currency_rupee, size: 15),
                                          Text("64")
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ))),
                  Container(
                      padding: const EdgeInsets.only(left: 15.0),
                      height: 70,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0))),
                              backgroundColor:
                                  const MaterialStatePropertyAll<Color>(
                                      Colors.blue)),
                          onPressed: () {},
                          label: const Text("Place Order",
                              style: TextStyle(color: Colors.white)),
                          icon: const Icon(Icons.arrow_back_ios_new,
                              color: Colors.white, size: 14),
                        ),
                      ))
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: const Text("Past Orders History")),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Text(orderData[index].itemName),
                      leading: Image.asset("assets/images/Milk.png"),
                      subtitle: Text(orderData[index].dateOfmanufacure),
                      childrenPadding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      children: [
                        ListTile(
                            title: Column(children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  children: [Text("Number of Pouches")],
                                ),
                                Column(
                                  children: [
                                    Text(orderData[index]
                                        .numberOfPouches
                                        .toString())
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  children: [Text("Price(Per Pouch)")],
                                ),
                                Column(
                                  children: [
                                    Text(orderData[index].price.toString())
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [Text("Total Price")],
                                ),
                                Column(
                                  children: [Text("896")],
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                children: [Text("Mode of Payment")],
                              ),
                              Column(
                                children: [
                                  Text(orderData[index].modeOfPayment)
                                ],
                              ),
                            ],
                          ),
                        ]))
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
