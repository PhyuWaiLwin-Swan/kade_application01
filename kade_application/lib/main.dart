import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Subbie',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var scaleFactor = screenWidth / 360; // Adjust as needed based on your design
    var subbieColor =  Color(0xFF074AE0);
    var fontSize = 12 * scaleFactor;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.transparent,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style:  TextStyle(
            fontSize: fontSize * 0.6, // Increase the title size
            fontWeight: FontWeight.bold,
            color: subbieColor,
            fontFamily: 'Mulish'// Optional: Make it bold
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0), // Adds spacing around the content
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(

                    ),
                  ),
                  // Responsive Text
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( 'Easily find temporary',
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Mulish',
                              fontSize: fontSize,
                            ),// Ensures text wraps properly
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text( 'staff with ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'Mulish',
                                  fontSize: fontSize,
                                ),
                                // Ensures text wraps properly
                              ),
                              Text( 'Subbie',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: subbieColor,
                                  fontFamily: 'Mulish',
                                  fontSize: fontSize+fontSize * 0.5,
                                ),
                                // Ensures text wraps properly
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(

                    ),
                  ),
                  // Responsive Image
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Image.asset(
                        'assets/subbie_logo.png',
                        fit: BoxFit.contain, // Ensures image resizes proportionally
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(

                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                  Container(
                    width: fontSize * 0.8, // Set circle size
                    height: fontSize * 0.8,
                    decoration: const BoxDecoration(
                      color: Colors.black, // Circle color
                      shape: BoxShape.circle, // Make it a circle
                    ),
                    child:  Center(
                      child: Text(
                        '1', // Number inside the circle
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: fontSize * 0.6, // Font size
                          fontWeight: FontWeight.bold, // Bold text
                        ),
                      ),
                    ),
                  ),
                          Container(width: fontSize*0.4,),
                          Text( 'Narrow location',
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Mulish',
                              fontSize: fontSize * 0.8,
                            ),// Ensures text wraps properly
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: fontSize * 0.8, // Set circle size
                            height: fontSize * 0.8,
                            decoration: const BoxDecoration(
                              color: Colors.black, // Circle color
                              shape: BoxShape.circle, // Make it a circle
                            ),
                            child:  Center(
                              child: Text(
                                '2', // Number inside the circle
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                  fontSize: fontSize * 0.6, // Font size
                                  fontWeight: FontWeight.bold, // Bold text
                                ),
                              ),
                            ),
                          ),
                          Container(width: fontSize*0.4,),
                          Text( 'Choose industry/trade',
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: 'Mulish',
                              fontSize: fontSize * 0.8,
                            ),// Ensures text wraps properly
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: fontSize * 0.8, // Set circle size
                            height: fontSize * 0.8,
                            decoration: const BoxDecoration(
                              color: Colors.black, // Circle color
                              shape: BoxShape.circle, // Make it a circle
                            ),
                            child:  Center(
                              child: Text(
                                '3', // Number inside the circle
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                  fontSize: fontSize * 0.6, // Font size
                                  fontWeight: FontWeight.bold, // Bold text
                                ),
                              ),
                            ),
                          ),
                          Container(width: fontSize*0.4,),
                          Row(
                            children: [
                              Text( 'Subbie ',
                                style:  TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: subbieColor,
                                  fontFamily: 'Mulish',
                                  fontSize: fontSize * 0.8,
                                ),// Ensures text wraps properly
                              ),
                              Text( 'finds your Pro',
                                style:  TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'Mulish',
                                  fontSize: fontSize * 0.8,
                                ),// Ensures text wraps properly
                              ),
                            ],
                          ),
                        ],
                      ),
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         // Text Input Field
                  //         TextField(
                  //           decoration: InputDecoration(
                  //             hintText: 'Enter your email',
                  //             contentPadding: const EdgeInsets.symmetric(
                  //                 horizontal: 20, vertical: 16), // Inner padding
                  //             border: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(30), // Rounded corners
                  //               borderSide: const BorderSide(color: Colors.grey),
                  //             ),
                  //             focusedBorder: OutlineInputBorder(
                  //               borderRadius: BorderRadius.circular(30), // Rounded corners
                  //               borderSide: const BorderSide(color: Colors.blue),
                  //             ),
                  //           ),
                  //         ),
                  //         const SizedBox(height: 20), // Spacing
                  //
                  //         // Cylinder Button
                  //         // SizedBox(
                  //         //   width: double.infinity, // Makes the button take full width
                  //         //   height: 50, // Height of the button
                  //         //   child: ElevatedButton(
                  //         //     onPressed: () {
                  //         //       // Button Action
                  //         //       print("Get Early Access Pressed");
                  //         //     },
                  //         //     style: ElevatedButton.styleFrom(
                  //         //       backgroundColor: Colors.black, // Button background color
                  //         //       foregroundColor: Colors.white, // Button text color
                  //         //       shape: RoundedRectangleBorder(
                  //         //         borderRadius: BorderRadius.circular(30), // Rounded shape
                  //         //       ),
                  //         //     ),
                  //         //     child: const Text(
                  //         //       'Get Early Access',
                  //         //       style: TextStyle(
                  //         //         fontSize: 18, // Text size
                  //         //         fontWeight: FontWeight.bold,
                  //         //       ),
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //         ],),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
