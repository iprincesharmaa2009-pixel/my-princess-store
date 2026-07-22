import 'package:flutter/material.dart';

class StocksPage extends StatefulWidget {
  const StocksPage({super.key});

  @override
  State<StocksPage> createState() => _StocksPageState();
}

class _StocksPageState extends State<StocksPage> {

  int stock = 10;

  void addStock() {
    setState(() {
      stock++;
    });
  }

  void removeStock() {
    if (stock > 0) {
      setState(() {
        stock--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "STOCKS",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(15),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  const Text(
                    "Cotton T-Shirt",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text("Colour: Black"),
                  const Text("Size: M"),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      const Text(
                        "Inventory",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Row(
                        children: [

                          IconButton(
                            onPressed: removeStock,
                            icon: const Icon(Icons.remove_circle),
                          ),

                          Text(
                            "$stock",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          IconButton(
                            onPressed: addStock,
                            icon: const Icon(Icons.add_circle),
                          ),

                        ],
                      ),

                    ],
                  ),

                  if (stock <= 2)
                    const Text(
                      "LOW STOCK ALERT",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}