import 'package:first_flutter_app/models/product_model.dart';
import 'package:first_flutter_app/screen/details.dart';
import 'package:flutter/material.dart';

enum ProductType {deliverable, downloadable }

class ViewForm extends StatefulWidget {
  ViewForm({Key? key,}) : super(key: key);

  @override
  State<ViewForm> createState() => _ViewFormState();
}

class _ViewFormState extends State<ViewForm> {

  _ViewFormState() {
    _salectedVal = _productSize[0];
  }


  final firstNameCont = TextEditingController();
  final lastNameCont = TextEditingController();
  bool? _checkBoxStatus = false;
  ProductType? _productType;
  final _productSize = ["small", "Medium", "Large", "XLarge"];
  String _salectedVal = "small";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var _firstName;
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Form"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image(
              image: AssetImage("images/eg.png"),
              width: 100.0,
              height: 100.0,
              alignment: Alignment.centerLeft,
            ),

            Form(
                key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (value) {
                      if(value ==  null || value.isEmpty) {
                        return "please enter some text";
                      }else null;
                    },
                    controller: firstNameCont,
                    decoration: InputDecoration(
                      labelText: 'Product Name',
                      prefixIcon: Icon(Icons.tv),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: lastNameCont,
                    decoration: InputDecoration(
                      labelText: 'Product Description',
                      prefixIcon: Icon(Icons.file_copy_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                CheckboxListTile(
                  value: _checkBoxStatus,
                  onChanged: (val) {
                    setState(() {
                      _checkBoxStatus = val;
                    });
                  },
                  title: Text("Top Product"),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                            contentPadding: EdgeInsets.all(0.0),
                            value:ProductType.deliverable,
                            title: Text(ProductType.deliverable.name),
                            groupValue: _productType,
                            onChanged: (val) {
                              setState(() {
                                _productType = val;
                              });
                            }),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: RadioListTile(
                            contentPadding: EdgeInsets.all(0.0),
                            value:ProductType.downloadable,
                            title: Text(ProductType.downloadable.name),
                            groupValue: _productType,
                            onChanged: (val) {
                              setState(() {
                                _productType = val;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButtonFormField(
                    value: _salectedVal,
                    items: _productSize
                        .map(
                          (e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ),
                    )
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        _salectedVal = val as String;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.blue,
                    ),
                    decoration: const InputDecoration(
                        label: Text("Product size"),
                        border: UnderlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: myBtn(context),
                )
              ],
            ),),

          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: Size(200, 50)),
      onPressed:() {
        if(_formKey.currentState!.validate()) {
          ProductDetails productDetails = ProductDetails();

          productDetails.productName = firstNameCont.text;
          productDetails.productDetails = lastNameCont.text;
          productDetails.isTopProduct = _checkBoxStatus!;
          productDetails.productType = _productType!;
          productDetails.productSize = _salectedVal;
          
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ViewDetails(productDetails: productDetails);
          }));
        }
      },
      // onPressed: () {
      //   Navigator.push(context, MaterialPageRoute(
      //     builder: (context) {
      //       return ViewDetails(
      //         firstName: firstNameCont.text,
      //         lastName: lastNameCont.text,
      //       );
      //     },
      //   ));
      // },
      child: Text(
        'Submit'.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
