import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:que_jobs/vacanciespages/similar%20jobs/samegradjobs.dart';

class ITSupport extends StatefulWidget {
  const ITSupport({super.key});

  @override
  State<ITSupport> createState() => _ITSupportState();
}

class _ITSupportState extends State<ITSupport> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1); //0.5 to 1.5
    await flutterTts.speak(textEditingController.text);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Navigate back to previous screen
            },
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          height: 1500,
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "IT Support",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "Microsoft",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "Johannesburg , Gauteng ",
                    style: TextStyle(fontSize: 17),
                  ),
                  Divider(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Job Information",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Pay : R14000"),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Job Types : Full Time",
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Length : Permanent"),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    height: 15,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Job Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("Microsoft looking for 2 IT Support Engineers  "),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("- Networking"),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "- Knowlegde of computer operating systems ,hardware and software"),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("- Maintaining and coming up with soluions "),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("- Technical support and maintenance"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Closing Date : 25 June 2024",
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Education : Diploma / Degree in Software Engineeing or related",
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Skills to have : ",
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "- Knowledge of any programming languanges like HTML & CSS, Python ,Java, "),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text("- Problem solving skills and critical thinking"),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("- SQL "),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("- Sofware Enginerring  "),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Apply"),
                    ),
                  ),
                  Divider(
                    height: 25,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  TextFormField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.spatial_audio_rounded,
                          color: Colors.grey,
                        ),
                        hintText: "Text to Speech",
                        hintStyle: TextStyle(
                            color: Color(0xFFb2b7bf), fontSize: 18.0)),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      child: Text("Start Text to Speech"),
                      onPressed: () => speak(textEditingController.text),
                    ),
                  ),
                  Text("Similar Jobs"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SameGrad()));
                            },
                            child: Center(
                              child: Container(
                                height: 150,
                                width: 280,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.srcOver),
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/graduate_program1.jpg'),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SameGrad()));
                            },
                            child: Center(
                              child: Container(
                                height: 150,
                                width: 280,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.srcOver),
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/graduate_program1.jpg'),
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
