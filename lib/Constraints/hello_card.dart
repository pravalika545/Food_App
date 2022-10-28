import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_12/Constraints/First_page.dart';

class HelloCard extends StatefulWidget {
  const HelloCard({Key? key}) : super(key: key);

  @override
  State<HelloCard> createState() => _HelloCardState();
}

class _HelloCardState extends State<HelloCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                  width: double.maxFinite,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/OIP.8HMmQnZWMWG4aop5aRq07AHaEK?w=305&h=180&c=7&r=0&o=5&pid=1.7'),
                      fit: BoxFit.cover,
                    ),
                  ))),
          Positioned(
              top: 70,
              left: 20,
              child: Row(
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  ),
                ],
              )),
          Positioned(
            top: 280,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(children: [
                const Padding(
                  padding: const EdgeInsets.only(right: 230, top: 20),
                  child: Text(
                    "Nemo",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 20,
                  ),
                  child: Row(children: const [
                    Icon(
                      Icons.food_bank_sharp,
                      color: Colors.blue,
                    ),
                    Text(
                      "Restaurant",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.circle,
                      size: 8,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                    ),
                    Text("2.1km"),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.circle,
                      size: 8,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "\$\$\$",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ]),
                ),
                SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Nemo is the Venue for those looking for a destination that reflects their style,stimulates their desires and delights their tastes",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: const [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Dinner",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Icon(
                        Icons.timer,
                        color: Colors.blue,
                      ),
                    ),
                    Text("15-20 min")
                  ],
                ),
                CarouselSlider(
                    options: CarouselOptions(
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal),
                    items: [
                      Row(children: [
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 120, right: 12),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.q_newPAQDz3GPE0Qw0Hj5QHaEK?w=293&h=180&c=7&r=0&o=5&pid=1.7"),
                                    fit: BoxFit.cover),
                                color: Colors.white38,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 12),
                          child: Column(
                            children: const [
                              Text(
                                "Steak of Salmon",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("\$21.99")
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 0, bottom: 120),
                          child: Icon(
                            Icons.add_box_rounded,
                            color: Colors.amber,
                            size: 40,
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 120, right: 12),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.Dh7pFto7YSJM6dRwII-EGQHaE8?w=256&h=180&c=7&r=0&o=5&pid=1.7"),
                                    fit: BoxFit.cover),
                                color: Colors.white38,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 12),
                          child: Column(
                            children: const [
                              Text(
                                "Fruits salad",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("\$6.9")
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 0, bottom: 120),
                          child: Icon(
                            Icons.add_box_rounded,
                            color: Colors.amber,
                            size: 40,
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                            padding:
                                const EdgeInsets.only(bottom: 120, right: 12),
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.Sa9ZfKEPzreh38i8xrwQJgHaEo?w=279&h=180&c=7&r=0&o=5&pid=1.7"),
                                    fit: BoxFit.cover),
                                color: Colors.white38,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 12),
                          child: Column(
                            children: const [
                              Text(
                                "Burger",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("\$30.00")
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 0, bottom: 120),
                          child: Icon(
                            Icons.add_box_rounded,
                            color: Colors.amber,
                            size: 40,
                          ),
                        ),
                      ]),
                    ]),
              ]),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              right: 90,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Icon(
                    Icons.favorite,
                    size: 45,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: Hero(
                  tag: 'First Page',
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).push(
                        MyHeroAnimation(builder: (context) => FirstPage())),
                    child: Container(
                      height: 55,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
