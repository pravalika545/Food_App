import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/Constraints/hello_card.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blue),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.black38),
              label: '',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download, color: Colors.black38),
              label: '',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.black38),
              label: '',
              backgroundColor: Colors.white,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Row(
                  children: [
                    const SizedBox(height: 80, width: 20),
                    Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.location_on),
                        )),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Your location",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text("Miami"),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.07McaBSIvqZl1cJlrBsgEgHaLH?w=185&h=278&c=7&r=0&o=5&pid=1.7',
                              ),
                            )))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150, top: 40),
                child: Text(
                  "Want to eat",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 80, top: 10),
                child: Text(
                  "near the ocean? ",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Row(children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Container(
                        height: 55,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.search),
                              onPressed: () {},
                            ),
                            const Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search place',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 5),
                    child: (Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.amber.shade300,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.tune),
                        onPressed: () {},
                      ),
                    )),
                  ),
                ]),
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 25,
                    height: 75,
                  ),
                  Text(
                    "Restaurants",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Pubs",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  SizedBox(width: 15),
                  Text("Cafes",
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                ],
              ),
              CarouselSlider(
                items: [
                  Container(
                      child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: InkWell(
                            onTap: () => print("hello"),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                    ),
                                    child: Image.network(
                                      "https://th.bing.com/th/id/OIP.bYImvu-5uLtP9vVXDZKq1QHaE8?w=298&h=199&c=7&r=0&o=5&pid=1.7",
                                      height: 120,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const ListTile(
                                      title: Text("La Mar by Gaston Acurio"),
                                      subtitle: Text("500 Brickell Key Drive"),
                                      trailing: Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      )),
                                ]),
                          ))),
                  Container(
                      child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Hero(
                            tag: 'Network Image',
                            child: InkWell(
                              onTap: () =>
                                  Navigator.of(context).push(MyHeroAnimation(
                                builder: (context) => HelloCard(),
                              )),
                              child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),
                                      child: Image.network(
                                        "https://th.bing.com/th/id/OIP.8HMmQnZWMWG4aop5aRq07AHaEK?w=305&h=180&c=7&r=0&o=5&pid=1.",
                                        height: 120,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    const ListTile(
                                        title: Text("Nemo"),
                                        subtitle: Text("960 inc"),
                                        trailing: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )),
                                  ]),
                            ),
                          ))),
                  Container(
                      child: Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: InkWell(
                            onTap: () => print("hi"),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                    ),
                                    child: Image.network(
                                      "https://th.bing.com/th/id/OIP.bYImvu-5uLtP9vVXDZKq1QHaE8?w=298&h=199&c=7&r=0&o=5&pid=1.7",
                                      height: 120,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const ListTile(
                                      title: Text("La Mar by Gaston Acurio"),
                                      subtitle: Text("500 Brickell Key Drive"),
                                      trailing: Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      )),
                                ]),
                          )))
                ],
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                ),
              ),
            ],
          ),
        ));
  }
}

class MyHeroAnimation extends MaterialPageRoute {
  MyHeroAnimation({required super.builder});

  @override
  Duration get transitionDuration => Duration(seconds: 2);
}
