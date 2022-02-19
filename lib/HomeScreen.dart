import 'package:flutter/material.dart';
import 'add_product.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Pharmacy Inventory \nSelect an option",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Center(
                    child: Wrap(
                      spacing:20,
                      runSpacing: 5.0,
                      children: <Widget>[
                        SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: new InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => add_product()),
                              );
                            },
                            child: Card(
                              color: Color.fromARGB(255,255, 255, 255),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/ADD.png",width: 100.0,),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Add Stock",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: new InkWell(
                            onTap: () {},
                            child: Card(

                              color: Color.fromARGB(255,255,255, 255),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/AVAIL.png",width: 100.0,),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Available",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: new InkWell(
                            onTap: () {},
                            child: Card(

                              color: Color.fromARGB(255,255, 255, 255),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/SAL.png",width: 90.0,),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Sales",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: new InkWell(
                            onTap: () {},
                            child: Card(

                              color: Color.fromARGB(255,255, 255, 255),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/STOCK.png",width: 100.0,),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Expired Stock",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: new InkWell(
                            onTap: () {},
                            child: Card(

                              color: Color.fromARGB(255,255, 255, 255),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/CUSTOMER.png",width: 95.0,),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Customer Details",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: new InkWell(
                            onTap: () {},
                            child: Card(

                              color: Color.fromARGB(255,255, 255, 255),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/INHAND.png",width: 90.0,),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Total Stock",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: new InkWell(
                            onTap: () {},
                            child: Card(

                              color: Color.fromARGB(255,255, 255, 255),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/PURCHASED.png",width: 100.0,),
                                        SizedBox(
                                          height: 0.0,
                                        ),
                                        Text(
                                          "Product Order",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: new InkWell(
                            onTap: () {},
                            child: Card(

                              color: Color.fromARGB(255,255, 255, 255),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset("assets/LIST.png",width: 90.0,),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Product List",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 0.0,
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
