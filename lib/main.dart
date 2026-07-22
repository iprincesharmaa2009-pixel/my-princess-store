import 'package:flutter/material.dart';
import 'orders_page.dart';
import 'stocks_page.dart';
import 'income_page.dart';
import 'account_page.dart';

void main() {
  runApp(const MyPrincessStore());
}

class MyPrincessStore extends StatelessWidget {
  const MyPrincessStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Princess Store",
      theme: ThemeData(
        fontFamily: "Arial",
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;

  final pages = const [
    HomePage(),
    OrdersPage(),
    StocksPage(),
    IncomePage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.black,

        unselectedItemColor: Colors.grey,

        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Orders",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: "Stocks",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Income",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),

        ],
      ),
    );
  }
}


class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(

        backgroundColor: Colors.white,

        elevation: 0,

        title: const Text(
          "MY PRINCESS STORE",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),


      body: Padding(

        padding: const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "PRINCE SHARMA",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height:20),


            const Text(
              "WELCOME SIR",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),


            const SizedBox(height:30),


            Card(
              child: ListTile(
                title: Text("Today Orders"),
                subtitle: Text("0"),
              ),
            ),


            Card(
              child: ListTile(
                title: Text("Delivered Orders"),
                subtitle: Text("0"),
              ),
            ),


            Card(
              child: ListTile(
                title: Text("Low Stocks Alerts"),
                subtitle: Text("No alerts"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}