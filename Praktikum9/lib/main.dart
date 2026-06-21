import 'package:flutter/material.dart';

void main() {
  runApp(const RB26App());
}

class RB26App extends StatelessWidget {
  const RB26App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RB26DETT',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
      ),
      home: const RB26HomePage(),
    );
  }
}

class RB26HomePage extends StatefulWidget {
  const RB26HomePage({super.key});

  @override
  State<RB26HomePage> createState() => _RB26HomePageState();
}

class _RB26HomePageState extends State<RB26HomePage> {
  int _selectedIndex = 0;

  final List<Map<String, String>> specs = [
    {"title": "Kapasitas", "value": "2.6 Liter"},
    {"title": "Konfigurasi", "value": "Inline 6"},
    {"title": "Turbo", "value": "Twin Turbo"},
    {"title": "Tenaga", "value": "280 HP"},
    {"title": "Torsi", "value": "368 Nm"},
    {"title": "Produksi", "value": "1989-2002"},
  ];

  Widget buildCarCard(
      String name,
      String year,
      IconData icon,
      ) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.yellow,
          size: 35,
        ),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          year,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
        title: const Text(
          "RB26DETT ENGINE",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: _selectedIndex == 0
          ? Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Icon(
                    Icons.precision_manufacturing,
                    size: 70,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "RB26DETT",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Legendary Twin Turbo Engine",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.builder(
                itemCount: specs.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey[900],
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text(
                            specs[index]["title"]!,
                            style: const TextStyle(
                              color: Colors.yellow,
                              fontWeight:
                              FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            specs[index]["value"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )

          : ListView(
        padding: const EdgeInsets.all(12),
        children: [
          buildCarCard(
            "Nissan Skyline GT-R R32",
            "1989 - 1994",
            Icons.directions_car,
          ),
          buildCarCard(
            "Nissan Skyline GT-R R33",
            "1995 - 1998",
            Icons.directions_car,
          ),
          buildCarCard(
            "Nissan Skyline GT-R R34",
            "1999 - 2002",
            Icons.directions_car,
          ),
          buildCarCard(
            "Nissan Stagea 260RS Autech",
            "RB26DETT Wagon",
            Icons.airport_shuttle,
          ),
          buildCarCard(
            "Tommykaira ZZII",
            "Prototype Supercar",
            Icons.sports_motorsports,
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[700],
        child: const Icon(
          Icons.info,
          color: Colors.black,
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "RB26DETT adalah mesin legendaris Nissan yang terkenal karena performa dan potensinya untuk tuning.",
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white70,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.speed),
            label: "Spesifikasi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.garage),
            label: "Mobil",
          ),
        ],
      ),
    );
  }
}