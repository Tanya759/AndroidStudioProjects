import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class add_product extends StatefulWidget {
  const add_product({Key? key}) : super(key: key);

  @override
  _add_productState createState() => _add_productState();
}

class _add_productState extends State<add_product> {
  bool _checkbox = false;
  TextEditingController dateinput = TextEditingController();



  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text('               Add Product'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){

          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.check),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[

                        SizedBox(height: 20.0),

                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.sell, color: Colors.black,),
                            // filled: true,
                            labelText: 'Product Name ',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)),
                            ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.storage, color: Colors.black,),
                            // filled: true,
                            labelText: 'Quantity',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                               focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)),
                             ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.account_balance_wallet, color: Colors.black,),
                            // filled: true,
                            labelText: 'Sell Price',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            // hintText: 'EMAIL',
                            // hintStyle: ,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.account_balance_wallet, color: Colors.black,),
                            // filled: true
                            labelText: 'Supplier Price',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                               focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)),
                            ),
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          controller: dateinput, //editing controller of this TextField
                          decoration: InputDecoration(
                              icon: Icon(Icons.calendar_today), //icon of text field
                              labelText: "Mfg. Date" //label text of field
                          ),
                          readOnly: true,  //set it true, so that user will not able to edit text
                          onTap: () async {
                            var pickedDate = await showDatePicker(
                                context: context, initialDate: DateTime.now(),
                                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101)
                            );

                            if(pickedDate != null ){
                              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinput.text = formattedDate; //set output date to TextField value.
                              });
                            }else{
                              print("Date is not selected");
                            }
                          },
                        ),
                        SizedBox(height: 10.0),
                        TextField(
                          controller: dateinput, //editing controller of this TextField
                          decoration: InputDecoration(
                              icon: Icon(Icons.calendar_today), //icon of text field
                              labelText: "Exp. Date" //label text of field
                          ),
                          readOnly: true,  //set it true, so that user will not able to edit text
                          onTap: () async {
                            var pickedDate = await showDatePicker(
                                context: context, initialDate: DateTime.now(),
                                firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101)
                            );

                            if(pickedDate != null ){
                              print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(formattedDate);


                              setState(() {
                                dateinput.text = formattedDate; //set output date to TextField value.
                              });
                            }else{
                              print("Date is not selected");
                            }
                          },

                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.description, color: Colors.black,),
                            labelText: 'Product Description ',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)),
                              ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: _checkbox,
                              onChanged: (value) {
                                setState(() {
                                  _checkbox = !_checkbox;
                                });
                              },
                            ),
                            Text('Do you need low stock Alert on this Product?'),
                          ],
                        ),
                        SizedBox(height: 0.0),
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.notifications, color: Colors.black,),

                            labelText: 'Minimum quantity for alert',
                            labelStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),

                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blueAccent)),

                          ),
                        ),

                      ],
                    )),
              ],
            ),
          ),
        ),

    );
  }
}



