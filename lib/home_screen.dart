import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;

  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 212, 212),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 60, 9, 9),
          centerTitle: true,
          title: Text(
            "فَسَبِّحْ بِحَمْدِ رَبِّكَ وَاسْتَغْفِرْهُ ۚ إِنَّهُ كَانَ تَوَّابًا",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 122, 86, 86),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 9),
                            blurRadius: 20,
                            color: Color.fromARGB(255, 47, 6, 6)),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Text(
                          count.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Transform.translate(
                    offset: Offset(1, 9),
                    child: Container(
                      width: 165,
                      height: 165,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 122, 86, 86),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 9),
                                blurRadius: 20,
                                color: const Color.fromARGB(255, 47, 6, 6)),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => counter(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 120, 10, 10),
                                shape: BoxShape.circle,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(80, 80)),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                            onPressed: () => reset(),
                            child:Icon(Icons.wifi_protected_setup),
                            style: ElevatedButton.styleFrom(
                                maximumSize: Size(80, 80)),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
