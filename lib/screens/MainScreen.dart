import 'package:flutter/material.dart';
import 'package:que_jobs/vacanciespages/businessA.dart';
import 'package:que_jobs/vacanciespages/frondend.dart';
import 'package:que_jobs/vacanciespages/graduateprogram.dart';
import 'package:que_jobs/vacanciespages/itsupport.dart';
import 'package:que_jobs/vacanciespages/juniorsd.dart';
import 'package:que_jobs/vacanciespages/projectm.dart';
import 'package:que_jobs/vacanciespages/seniorse.dart';

class MainScreen extends StatefulWidget {
  final String userEmail;
  final String outcome;
  MainScreen({
    required this.userEmail,
    required this.outcome,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _searchText = '';
  bool isFavorite = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;
  bool isFavorite4 = false;
  bool isFavorite5 = false;
  bool isFavorite6 = false;
  bool isFavorite7 = false;

  void _updateSearchText(String newText) {
    setState(() {
      _searchText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Row(
            children: [
              const Text(
                "QUEJOBS",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Spacer(), // Add a spacer to push the welcome text to the right
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  ' ' + widget.userEmail,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    icon: Icon(Icons.search),
                    labelStyle: TextStyle(color: Colors.brown),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.amber.shade800)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.amber.shade800)),
                  ),
                  onChanged: _updateSearchText,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                "Job Feed",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              const Text(
                'Jobs related to what you are interested on...',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => GraduateP()));
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 430,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.srcOver),
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/graduate_program1.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Graduate Program 2025',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Capitec Bank',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Sandton, Gauteng',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color:
                                        isFavorite ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => JuniorSD()));
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 430,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.srcOver),
                                fit: BoxFit.fill,
                                image: AssetImage('assets/junior.jpeg'),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'Junior Software Developer',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Property24',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Midrand , Gauteng',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite2 = !isFavorite2;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color:
                                        isFavorite2 ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SeniorSE()));
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 430,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.srcOver),
                                fit: BoxFit.fill,
                                image: AssetImage('assets/Senior.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Senior Software Engineer',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.lightBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Amazon',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Woodstock, Cape Town',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite3 = !isFavorite3;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color:
                                        isFavorite3 ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ITSupport()));
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 430,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.srcOver),
                                fit: BoxFit.fill,
                                image: AssetImage('assets/support.png'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'IT Support',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Microsoft',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Johannesburg, Gauteng',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite4 = !isFavorite4;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color:
                                        isFavorite4 ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ProjectM()));
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 430,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.srcOver),
                                fit: BoxFit.fill,
                                image: AssetImage('assets/project1.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Project Manager',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Standard Bank',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Johannesburg, Gauteng',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite5 = !isFavorite5;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color:
                                        isFavorite5 ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => FrondEND()));
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 430,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.srcOver),
                                fit: BoxFit.fill,
                                image: AssetImage('assets/frontend.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Frond end Developer',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Takealot',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Johannesburg, Gauteng',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite6 = !isFavorite6;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color:
                                        isFavorite6 ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => BusinessA()));
                        },
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 430,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.srcOver),
                                fit: BoxFit.fill,
                                image: AssetImage('assets/business.jpg'),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Business Analyst',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'TechEase',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Blomfontein, Free State',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isFavorite7 = !isFavorite7;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color:
                                        isFavorite7 ? Colors.red : Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
