import 'package:flutter/material.dart';
import 'package:flutter_app/Helper.dart';
import 'package:flutter_app/Screen/diseasePage.dart';
import 'package:flutter_app/provider/providerclass.dart';
import 'package:provider/provider.dart';

class TopsearchBar extends StatefulWidget {
  @override
  _TopsearchBarState createState() => _TopsearchBarState();
}

class _TopsearchBarState extends State<TopsearchBar> {
  int s1 = 0;
  // ignore: missing_return
  String searchcontroller() {
    if (Provider.of<Providerclass>(context, listen: true).sugg2 == 1 &&
        Provider.of<Providerclass>(context, listen: true).sugg1 == 1) {
      setState(() {
        s1 = 1;
      });
      return "fatique and vomiting";
    } else if (Provider.of<Providerclass>(context, listen: true).sugg2 == 1) {
      setState(() {
        s1 = 2;
      });
      return "Vomiting";
    } else if (Provider.of<Providerclass>(context, listen: false).sugg1 == 1) {
      setState(() {
        s1 = 3;
      });
      return "Fatique";
    } else if (Provider.of<Providerclass>(context, listen: true).sugg2 == 0 &&
        Provider.of<Providerclass>(context, listen: true).sugg1 == 0) {
      setState(() {
        s1 = 0;
      });
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Search & add your symptoms",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff08233D),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: TextEditingController(text: searchcontroller()),
              decoration: InputDecoration(
                hintText: " 🔍 Search Symptoms ",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Color(0xff3A546D),
                    width: 2,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3A546D),
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff3A546D),
                    width: 2,
                  ),
                ),
                suffix: Container(
                  height: 30,
                  child: RaisedButton(
                    onPressed: () {
                      if (s1 == 1) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DiseasePage(
                            data: vomiting,
                          ),
                        ));
                      } else if (s1 == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DiseasePage(
                                data: vomiting,
                              ),
                            ));
                      } else if (s1 == 3) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DiseasePage(),
                        ));
                      }
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.pink),
                    ),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
