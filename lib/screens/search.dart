import 'package:flutter/material.dart';
import 'package:periodic_table/content/elements.dart';
import 'package:periodic_table/main.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => new _SearchState();
}

class _SearchState extends State<Search> {
  Widget appBarTitle = new Text(
    "Search Example",
    style: new TextStyle(color: Colors.white),
  );
  Icon icon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  List<dynamic> _list;
  bool _isSearching;
  List searchresult = new List();

  _SearchState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          _isSearching = false;
        });
      } else {
        setState(() {
          _isSearching = true;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _isSearching = false;
    values();
  }

  void values() {
    _list = elementName + elementID;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: globalKey,
      //appBar: buildAppBar(context),
      body: new Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: SizedBox(
                width: 200,
                child: TextField(
                  cursorColor: Colors.black,
                  controller: _controller,
                  decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.search, color: Colors.black),
                      hintText: "Search...",
                      hintStyle: new TextStyle(color: Colors.black)),
                  onChanged: searchOperation,
                ),
              ),
            ),
            new Flexible(
                child: searchresult.length != 0 || _controller.text.isNotEmpty
                    ? new ListView.builder(
                        shrinkWrap: true,
                        itemCount: searchresult.length,
                        itemBuilder: (BuildContext context, int index) {
                          String listData = searchresult[index];
                          return new ListTile(
                            title: new Text(listData.toString()),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: Text(
                                      '${listData.toString()}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  body: ListView(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/${listData.toString()}.jpg',
                                        ),
                                        radius: 60,
                                        backgroundColor: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Card(
                                        margin: EdgeInsets.only(
                                          top: 10.0,
                                          bottom: 20.0,
                                          left: 10,
                                          right: 10,
                                        ),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.contacts_rounded,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            'Name of the Element: ${listData.toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.only(
                                          top: 10.0,
                                          bottom: 20.0,
                                          left: 10,
                                          right: 10,
                                        ),
                                        elevation: 6,
                                        child: ListTile(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Home(),
                                              ),
                                            );
                                          },
                                          leading: Icon(
                                            Icons.info_outline_rounded,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            'More',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }));
                            },
                          );
                        },
                      )
                    : new ListView.builder(
                        shrinkWrap: true,
                        itemCount: _list.length,
                        itemBuilder: (BuildContext context, int index) {
                          String listData = _list[index];
                          return new ListTile(
                            title: new Text(listData.toString()),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: Text(
                                      '${elementName[index]}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  body: ListView(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/${elementName[index].toString()}.jpg',
                                        ),
                                        radius: 60,
                                        backgroundColor: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Card(
                                        margin: EdgeInsets.only(
                                          top: 10.0,
                                          bottom: 20.0,
                                          left: 10,
                                          right: 10,
                                        ),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            '${elementID[index].toString()}',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Name of the Element: ${elementID[index].toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'E',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Electrons: ${electrons[index].toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'P',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Protons: ${protons[index].toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'N',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Neutrons: ${neutrons[index].toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'Z',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Atomic Number: ${z[index].toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'A',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Atomic Mass: ${aMass[index].toString()} amu',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'Ve',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Valance Electron: ${valenceElectron[index].toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'Ec',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Electronic Configutation: ${eC[index].toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'NoE',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Nature of Element: ${natEle[index].toString()}',
                                          ),
                                        ),
                                      ),
                                      Card(
                                        margin: EdgeInsets.all(10.0),
                                        elevation: 6,
                                        child: ListTile(
                                          leading: Text(
                                            'NoI',
                                            style: TextStyle(
                                              fontFamily: 'Raleway',
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          title: Text(
                                            'Nature of Ion: ${natIon[index].toString()}',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }));
                            },
                          );
                        },
                      ))
          ],
        ),
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
      new IconButton(
        icon: icon,
        onPressed: () {
          setState(() {
            if (this.icon.icon == Icons.search) {
              this.icon = new Icon(
                Icons.close,
                color: Colors.white,
              );
              this.appBarTitle = new TextField(
                controller: _controller,
                style: new TextStyle(
                  color: Colors.white,
                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search, color: Colors.white),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Colors.white)),
                onChanged: searchOperation,
              );
              _handleSearchStart();
            } else {
              _handleSearchEnd();
            }
          });
        },
      ),
    ]);
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color: Colors.white,
      );
      this.appBarTitle = new Text(
        "Search Sample",
        style: new TextStyle(color: Colors.white),
      );
      _isSearching = false;
      _controller.clear();
    });
  }

  void searchOperation(String searchText) {
    searchresult.clear();
    if (_isSearching != null) {
      for (int i = 0; i < _list.length; i++) {
        String data = _list[i];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult.add(data);
        }
      }
    }
  }
}
