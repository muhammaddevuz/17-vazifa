import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List price = [
  "60 000",
  "50 000",
  "40 000",
  "30 000",
  "20 000",
  "10 000",
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int check = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Mahsulotlar bo'limi",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    price = price.reversed.toList();
                  });
                },
                icon: const Icon(
                  CupertinoIcons.arrow_up_arrow_down,
                  size: 25,
                )),
            PopupMenuButton(
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                ),
                itemBuilder: (ctx) {
                  return [
                    PopupMenuItem(
                      onTap: () {
                        setState(() {
                          check = 1;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Galareya",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight:
                                    check == 1 ? FontWeight.w900 : null),
                          ),
                          const SizedBox(width: 60),
                          (check == 1)
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.blue,
                                  size: 30,
                                )
                              : const SizedBox(width: 0)
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      onTap: () {
                        setState(() {
                          check = 2;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ro'yxat",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight:
                                    check == 2 ? FontWeight.w900 : null),
                          ),
                          const SizedBox(width: 60),
                          (check == 2)
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.blue,
                                  size: 30,
                                )
                              : const SizedBox(width: 0)
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      onTap: () {
                        setState(() {
                          check = 3;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Plitka",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight:
                                    check == 3 ? FontWeight.w900 : null),
                          ),
                          const SizedBox(width: 80),
                          (check == 3)
                              ? const Icon(
                                  Icons.check,
                                  color: Colors.blue,
                                  size: 30,
                                )
                              : const SizedBox(width: 0)
                        ],
                      ),
                    ),
                  ];
                }),
            const SizedBox(width: 10),
          ],
        ),
        body: check == 1
            ? galarey()
            : (check == 2)
                ? list()
                : plitka(),
      ),
    );
  }
}

Widget galarey() {
  return SingleChildScrollView(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        for (var i = 0; i < 6; i++)
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              clipBehavior: Clip.hardEdge,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/car.jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            color: Colors.teal[300],
                            padding: const EdgeInsets.only(
                                right: 10, left: 10, top: 2, bottom: 2),
                            child: const Text(
                              "Top",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Universal pult harqanday",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "chastota uchun",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Icon(
                              CupertinoIcons.heart,
                              size: 27,
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[400]),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 3, bottom: 3),
                          child: const Text(
                            "Yangi",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${price[i]} so'm",
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Tashkent, Uchtepa tumani",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[800]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    ),
  );
}

Widget list() {
  return ListView(
    padding: const EdgeInsets.all(20),
    children: [
      for (var i = 0; i < 6; i++)
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: 200,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/car.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          color: Colors.teal[300],
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 2, bottom: 2),
                          child: const Text(
                            "Top",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Universal",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Pult",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Icon(
                            CupertinoIcons.heart,
                            size: 27,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[400]),
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 3, bottom: 3),
                        child: const Text(
                          "Yangi",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${price[i]} so'm",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tashkent,",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800]),
                          ),
                          Text(
                            "Uchtepa tumani",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    ],
  );
}

Widget plitka() {
  return GridView(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 2.13),
    children: [
      for (var i = 0; i < 6; i++)
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            clipBehavior: Clip.hardEdge,
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/car.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          color: Colors.teal[300],
                          padding: const EdgeInsets.only(
                              right: 10, left: 10, top: 2, bottom: 2),
                          child: const Text(
                            "Top",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Universal",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Pult",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(width: 35),
                          Icon(
                            CupertinoIcons.heart,
                            size: 27,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[400]),
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 3, bottom: 3),
                        child: const Text(
                          "Yangi",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "${price[i]} so'm",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tashkent,",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800]),
                          ),
                          Text(
                            "Uchtepa tumani",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[800]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    ],
  );
}
