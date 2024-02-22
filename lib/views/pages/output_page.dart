import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_data_gen/views/pages/home_page.dart';

class OutPutPage extends StatefulWidget {
  const OutPutPage({
    super.key,
    required this.result,
    required this.icon,
  });

  final Map<String, dynamic> result;
  final String icon;

  @override
  State<OutPutPage> createState() => _OutPutPageState();
}

class _OutPutPageState extends State<OutPutPage> {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SizedBox(
            width: 50,
          ),
          Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'output',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
      body: Column(  
        children: [
          Container(
            width: 250,
            height:250,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: NetworkImage(
                    widget.icon,
                  ),
                  fit: BoxFit.contain),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(sizeW / 6.9, sizeH / 18.5, 0, 0),
            child: SizedBox(
              height: 230,
              width: 400,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < widget.result.keys.length; i++)
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            child: Text(
                              '${widget.result.keys.elementAt(i)}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Text(
                            " : ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "${widget.result.values.elementAt(i)}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 90,
              child: Padding(
                padding:
                    EdgeInsets.fromLTRB(0, sizeH / 17.04, sizeW / 10.9166, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const HomePage()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        sizeW / 17, sizeH / 200, sizeW / 17, sizeH / 200),
                    child: const Text(
                      "Back to Home",
                      style: TextStyle(
                        color: Color(
                          0xFF1b211d,
                        ),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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
